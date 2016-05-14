import gnu.io.*;
import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;
import java.util.Scanner;

/**
 * Created by stevenlee on 5/12/16.
 * Utilizes the RXTX Library available at http://rxtx.qbang.org/wiki/index.php/Main_Page
 */
public class Main {
//    GUI Form Elements - Main.form
    private JTextField textField1;
    private JTextField textField2;
    private JButton browseButton;
    private JButton browseButton1;
    private JPanel panel;
    private JButton sendButton;
    private JButton recieveButton;
    static JFileChooser fc = new JFileChooser();
    static Scanner input;
    static File saveFile;
    static InputStream in;
    static OutputStream out;
    static SerialPort serialPort;
    static String OS = System.getProperty("os.name");;
    static StringBuilder sb = new StringBuilder();
    static int cnt;

    static {
        try {
//            System.setProperty("java.library.path","/Users/stevenlee/Downloads/rxtx-2.2pre2-bins/mac-10.5/");
            if (OS.equals(new String("Mac OS X"))) {
                System.load("/Library/Java/Extensions/librxtxSerial.jnilib");
            }
            else if (OS.contains(new String("Windows"))) {
                System.load("C:/ProgramData/Oracle/Java/javapath/rxtxSerial.dll");
            }
            else {
                System.loadLibrary("librxtxParallel.so");
                System.loadLibrary("librxtxSerial.so");
            }
        } catch (UnsatisfiedLinkError e) {
            System.err.println("Native code library failed to load.\n" + e);
            System.exit(1);
        } catch (NullPointerException np) {
            System.err.println("Could Not Discover OS\n");
        }
    }

    public Main() {
//        GUI Constructor
        JFrame frame = new JFrame("Serial");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(450, 150);
        frame.add(panel);
        frame.setVisible(true);
        browseButton.addActionListener(new BrowseInput() {
        });
        browseButton1.addActionListener(new BrowseOutput());
        sendButton.addActionListener(new sendPress());
        recieveButton.addActionListener(new recievePress());
        cnt = 0;
    }

    class BrowseInput implements ActionListener {
        @Override
//        Browse for Input File
        public void actionPerformed(ActionEvent ae) {
            if (ae.getSource() == browseButton) {
                fc.setDialogTitle("Open Directory");
                fc.setFileFilter(new FileNameExtensionFilter(".txt", "txt", "text"));
                int returnVal = fc.showOpenDialog(null);
                if (returnVal == JFileChooser.APPROVE_OPTION) {
                    File file = fc.getSelectedFile();
                    textField1.setText(fc.getSelectedFile().getAbsolutePath());
                    System.out.println("User opened file '" + fc.getSelectedFile().getAbsolutePath() +"'" );
                    try {
                        input = new Scanner(file);
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    class BrowseOutput implements ActionListener {
        @Override
//        Browse for save location and file name
        public void actionPerformed(ActionEvent ae) {
            if (ae.getSource() == browseButton1) {
                fc.setDialogTitle("Save Directory");
                fc.setFileFilter(new FileNameExtensionFilter("Text Documents(*.txt)", "txt", "text"));
                int returnVal = fc.showSaveDialog(null);
                if (returnVal == JFileChooser.APPROVE_OPTION) {
//                    saveFile = fc.getSelectedFile();
                    saveFile = new File(fc.getSelectedFile().getAbsoluteFile() + ".txt");
                    textField2.setText(fc.getSelectedFile().getAbsolutePath() + ".txt");
                    System.out.println("Saved at '" + fc.getSelectedFile().getAbsolutePath() + ".txt");
                }

            }
        }
    }

    void connect(String comPort) throws Exception {
//        Connect to Serial Port
        CommPortIdentifier portIdentifier = CommPortIdentifier.getPortIdentifier(comPort);
        if (portIdentifier.isCurrentlyOwned()) {
            System.out.println("Error: Port is currently in use");
        } else {
            CommPort port = portIdentifier.open(this.getClass().getName(), 2000);

            if (port instanceof SerialPort) {
                serialPort = (SerialPort) port;
                serialPort.setSerialPortParams(19200, SerialPort.DATABITS_8, SerialPort.STOPBITS_2, SerialPort.PARITY_EVEN);

                in = serialPort.getInputStream();
                out = serialPort.getOutputStream();

            }
        }
    }

    public static class SerialRead implements Runnable {
//        Fetch Data
        InputStream in;
        SerialWrite w = new SerialWrite(out);
//        String s = new String();
        StringBuilder s = new StringBuilder();

        public SerialRead(InputStream in )
        {
            this.in = in;
        }

        public void run () {
            byte[] buffer = new byte[1024];
            int len = -1;
            try {
                w.out.write('o');
                while ( ( len = this.in.read(buffer)) > -1 ) {
                    s.append(new String(buffer,0,len));
                    System.out.print(new String(buffer,0,len));
                    try {
                        writeFile(s.toString());
                       //System.out.println("Saved at '" + fc.getSelectedFile().getAbsolutePath() + ".txt");
                    } catch (Exception fe) {
                        System.err.println("Could not save to file: " + fc.getSelectedFile().getAbsolutePath() + ".txt");
                    }
                }
            }
            catch ( IOException e )
            {
                e.printStackTrace();
            }
        }
    }

    public static class SerialWrite implements Runnable {
//        Send Data
        OutputStream out;
        char[] buffer = new char[5];
        int j = 0;

        public SerialWrite(OutputStream out ) {
            this.out = out;
        }

        public void run () {
            try {
//                int c = 0;
                if (cnt == 0) {
                    this.out.write('i');
                }
                while (input.hasNext()) {
                    String word = input.nextLine();
                    System.out.println(word);
                    for (int i = 0; i < word.length(); i++) {
                        char c = word.charAt(i);
                        if (cnt < 5) {
                            this.out.write(c);
                        }
                        else {
                            cnt++;
                            if (j < 5) {
                                buffer[j] = c;
                                j++;
                            }
                            else {
                                for (int k = 0; k < 5; k++) {
                                    this.out.write(buffer[k]);
                                    j = 0;
                                    cnt = 0;
                                }
                            }
                        }
                    }
                }
//                while ( ( c = System.in.SerialRead()) > -1 ) {
//                    this.out.SerialWrite(c);
//                }
            } catch ( IOException e ) {
                e.printStackTrace();
            }
        }
    }


    static void writeFile(String wd) throws Exception {
//        Write to specified text file name and location
        //System.out.print(wd);
        BufferedWriter wf = new BufferedWriter(new FileWriter(saveFile));
        wf.write(wd);
        wf.close();
    }


    class sendPress implements ActionListener {
//        Send Data upon user clicking button
        @Override
        public void actionPerformed(ActionEvent ae) {
            try {
                sendButton.setEnabled(false);
                (new Thread(new SerialWrite(out))).start();
                sendButton.setText("Sent");
            } catch (Exception e) {
            }
        }
    }

    class recievePress implements ActionListener {
//        Recieve upon user clicking button
        @Override
        public void actionPerformed(ActionEvent ae) {
            try {
                recieveButton.setEnabled(false);
                (new Thread(new SerialRead(in))).start();
                recieveButton.setText("Recieved");
            } catch (Exception e) {
            }
        }
    }

    static void listPorts() {
//        Discover Available Ports
        java.util.Enumeration<CommPortIdentifier> portEnum = CommPortIdentifier.getPortIdentifiers();
        while ( portEnum.hasMoreElements() )
        {
            CommPortIdentifier portIdentifier = portEnum.nextElement();
            System.out.println(portIdentifier.getName()  +  " - " +  getPortTypeName(portIdentifier.getPortType()) );
        }
    }

    static String getPortTypeName ( int portType ) {
//        Define Port Types
        switch (portType) {
            case CommPortIdentifier.PORT_I2C:
                return "I2C";
            case CommPortIdentifier.PORT_PARALLEL:
                return "Parallel";
            case CommPortIdentifier.PORT_RAW:
                return "Raw";
            case CommPortIdentifier.PORT_RS485:
                return "RS485";
            case CommPortIdentifier.PORT_SERIAL:
                return "Serial";
            default:
                return "unknown type";
        }
    }

    public static void main(String[] args) {
        System.out.println(OS);
        try {
            listPorts();
            (new Main()).connect("COM9");
        } catch ( Exception e ) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
