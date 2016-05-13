import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 * Created by stevenlee on 5/13/16.
 */
public class About {
    public JButton closeButton;
    public JTextArea textArea1;
    public JPanel panel;
    public JFrame frame;

    public About() {
        closeButton.addActionListener(new close());
    }

    class close implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent ae) {
            frame.dispose();
        }
    }

    public static void main(String[] args) {
        About about = new About();
        about.textArea1.setText("This Program Utilizes the RXTX Library available at http://rxtx.qbang.org/wiki/index.php/Main_Page\n");
    }
}
