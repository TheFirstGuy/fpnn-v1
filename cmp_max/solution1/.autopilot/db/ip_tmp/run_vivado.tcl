create_project prj -part xc7a200tfbg676-2 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
source "C:/Users/stevenlee/Documents/cmp_max/solution1/syn/vhdl/cmp_max_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips cmp_max_ap_fcmp_0_no_dsp_32]]
}
