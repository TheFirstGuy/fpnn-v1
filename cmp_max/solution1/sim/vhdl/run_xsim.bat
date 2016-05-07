
call xelab xil_defaultlib.apatb_cmp_max_top -prj cmp_max.prj --lib "ieee_proposed=./ieee_proposed" -s cmp_max 
call xsim --noieeewarnings cmp_max -tclbatch cmp_max.tcl

