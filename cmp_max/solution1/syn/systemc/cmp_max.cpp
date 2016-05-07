// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "cmp_max.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic cmp_max::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic cmp_max::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> cmp_max::ap_ST_st1_fsm_0 = "1";
const sc_lv<3> cmp_max::ap_ST_st2_fsm_1 = "10";
const sc_lv<3> cmp_max::ap_ST_st3_fsm_2 = "100";
const sc_lv<32> cmp_max::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> cmp_max::ap_const_lv1_1 = "1";
const sc_lv<1> cmp_max::ap_const_lv1_0 = "0";
const sc_lv<32> cmp_max::ap_const_lv32_1 = "1";
const sc_lv<32> cmp_max::ap_const_lv32_2 = "10";
const sc_lv<32> cmp_max::ap_const_lv32_17 = "10111";
const sc_lv<32> cmp_max::ap_const_lv32_1E = "11110";
const sc_lv<8> cmp_max::ap_const_lv8_FF = "11111111";
const sc_lv<23> cmp_max::ap_const_lv23_0 = "00000000000000000000000";
const sc_lv<5> cmp_max::ap_const_lv5_2 = "10";

cmp_max::cmp_max(sc_module_name name) : sc_module(name), mVcdFile(0) {
    cmp_max_fcmp_32ns_32ns_1_1_U0 = new cmp_max_fcmp_32ns_32ns_1_1<1,1,32,32,1>("cmp_max_fcmp_32ns_32ns_1_1_U0");
    cmp_max_fcmp_32ns_32ns_1_1_U0->din0(grp_fu_63_p0);
    cmp_max_fcmp_32ns_32ns_1_1_U0->din1(grp_fu_63_p1);
    cmp_max_fcmp_32ns_32ns_1_1_U0->opcode(grp_fu_63_opcode);
    cmp_max_fcmp_32ns_32ns_1_1_U0->dout(grp_fu_63_p2);
    cmp_max_fcmp_32ns_32ns_1_1_U1 = new cmp_max_fcmp_32ns_32ns_1_1<1,1,32,32,1>("cmp_max_fcmp_32ns_32ns_1_1_U1");
    cmp_max_fcmp_32ns_32ns_1_1_U1->din0(grp_fu_69_p0);
    cmp_max_fcmp_32ns_32ns_1_1_U1->din1(y2);
    cmp_max_fcmp_32ns_32ns_1_1_U1->opcode(grp_fu_69_opcode);
    cmp_max_fcmp_32ns_32ns_1_1_U1->dout(grp_fu_69_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_ap_sig_bdd_19);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_60);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_70);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_19 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_60 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_bdd_70 );

    SC_METHOD(thread_en_read_read_fu_32_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en );

    SC_METHOD(thread_grp_fu_63_opcode);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( or_cond_reg_270 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_63_p0);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( y0 );
    sensitive << ( y1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_63_p1);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( y0 );
    sensitive << ( y1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_69_opcode);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( or_cond_reg_270 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_69_p0);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( y0 );
    sensitive << ( y1 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_75_p0);
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( tmp_6_fu_152_p2 );
    sensitive << ( tmp_6_reg_265 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_fu_75_p2);
    sensitive << ( grp_fu_75_p0 );
    sensitive << ( grp_fu_63_p2 );

    SC_METHOD(thread_max);
    sensitive << ( y0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( or_cond_reg_270 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( y1_assign_fu_230_p3 );

    SC_METHOD(thread_max_ap_vld);
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_notlhs1_fu_177_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_s_fu_163_p4 );

    SC_METHOD(thread_notlhs6_fu_134_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_2_fu_102_p4 );

    SC_METHOD(thread_notlhs_fu_116_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_fu_84_p4 );

    SC_METHOD(thread_notrhs1_fu_183_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_9_fu_173_p1 );

    SC_METHOD(thread_notrhs7_fu_140_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_3_fu_112_p1 );

    SC_METHOD(thread_notrhs_fu_122_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( en_read_read_fu_32_p2 );
    sensitive << ( tmp_1_fu_94_p1 );

    SC_METHOD(thread_or_cond2_fu_224_p2);
    sensitive << ( grp_fu_75_p2 );
    sensitive << ( tmp_18_fu_219_p2 );

    SC_METHOD(thread_or_cond_fu_207_p2);
    sensitive << ( grp_fu_75_p2 );
    sensitive << ( tmp_13_fu_201_p2 );

    SC_METHOD(thread_tmp_10_fu_189_p2);
    sensitive << ( notrhs1_fu_183_p2 );
    sensitive << ( notlhs1_fu_177_p2 );

    SC_METHOD(thread_tmp_11_fu_195_p2);
    sensitive << ( tmp_4_fu_128_p2 );
    sensitive << ( tmp_10_fu_189_p2 );

    SC_METHOD(thread_tmp_13_fu_201_p2);
    sensitive << ( tmp_11_fu_195_p2 );
    sensitive << ( grp_fu_69_p2 );

    SC_METHOD(thread_tmp_16_fu_213_p2);
    sensitive << ( tmp_5_fu_146_p2 );
    sensitive << ( tmp_10_fu_189_p2 );

    SC_METHOD(thread_tmp_18_fu_219_p2);
    sensitive << ( tmp_16_reg_275 );
    sensitive << ( grp_fu_69_p2 );

    SC_METHOD(thread_tmp_1_fu_94_p1);
    sensitive << ( y0_to_int_fu_80_p1 );

    SC_METHOD(thread_tmp_2_fu_102_p4);
    sensitive << ( y1_to_int_fu_98_p1 );

    SC_METHOD(thread_tmp_3_fu_112_p1);
    sensitive << ( y1_to_int_fu_98_p1 );

    SC_METHOD(thread_tmp_4_fu_128_p2);
    sensitive << ( notrhs_fu_122_p2 );
    sensitive << ( notlhs_fu_116_p2 );

    SC_METHOD(thread_tmp_5_fu_146_p2);
    sensitive << ( notrhs7_fu_140_p2 );
    sensitive << ( notlhs6_fu_134_p2 );

    SC_METHOD(thread_tmp_6_fu_152_p2);
    sensitive << ( tmp_4_fu_128_p2 );
    sensitive << ( tmp_5_fu_146_p2 );

    SC_METHOD(thread_tmp_9_fu_173_p1);
    sensitive << ( y2_to_int_fu_159_p1 );

    SC_METHOD(thread_tmp_fu_84_p4);
    sensitive << ( y0_to_int_fu_80_p1 );

    SC_METHOD(thread_tmp_s_fu_163_p4);
    sensitive << ( y2_to_int_fu_159_p1 );

    SC_METHOD(thread_y0_to_int_fu_80_p1);
    sensitive << ( y0 );

    SC_METHOD(thread_y1_assign_fu_230_p3);
    sensitive << ( y1 );
    sensitive << ( y2 );
    sensitive << ( or_cond2_reg_280 );

    SC_METHOD(thread_y1_to_int_fu_98_p1);
    sensitive << ( y1 );

    SC_METHOD(thread_y2_to_int_fu_159_p1);
    sensitive << ( y2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( en_read_read_fu_32_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "cmp_max_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, y0, "(port)y0");
    sc_trace(mVcdFile, y1, "(port)y1");
    sc_trace(mVcdFile, y2, "(port)y2");
    sc_trace(mVcdFile, max, "(port)max");
    sc_trace(mVcdFile, max_ap_vld, "(port)max_ap_vld");
    sc_trace(mVcdFile, en, "(port)en");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_19, "ap_sig_bdd_19");
    sc_trace(mVcdFile, en_read_read_fu_32_p2, "en_read_read_fu_32_p2");
    sc_trace(mVcdFile, tmp_6_fu_152_p2, "tmp_6_fu_152_p2");
    sc_trace(mVcdFile, tmp_6_reg_265, "tmp_6_reg_265");
    sc_trace(mVcdFile, or_cond_fu_207_p2, "or_cond_fu_207_p2");
    sc_trace(mVcdFile, or_cond_reg_270, "or_cond_reg_270");
    sc_trace(mVcdFile, tmp_16_fu_213_p2, "tmp_16_fu_213_p2");
    sc_trace(mVcdFile, tmp_16_reg_275, "tmp_16_reg_275");
    sc_trace(mVcdFile, or_cond2_fu_224_p2, "or_cond2_fu_224_p2");
    sc_trace(mVcdFile, or_cond2_reg_280, "or_cond2_reg_280");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_60, "ap_sig_bdd_60");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_bdd_70, "ap_sig_bdd_70");
    sc_trace(mVcdFile, grp_fu_63_p0, "grp_fu_63_p0");
    sc_trace(mVcdFile, grp_fu_63_p1, "grp_fu_63_p1");
    sc_trace(mVcdFile, grp_fu_69_p0, "grp_fu_69_p0");
    sc_trace(mVcdFile, grp_fu_75_p0, "grp_fu_75_p0");
    sc_trace(mVcdFile, grp_fu_63_p2, "grp_fu_63_p2");
    sc_trace(mVcdFile, y0_to_int_fu_80_p1, "y0_to_int_fu_80_p1");
    sc_trace(mVcdFile, y1_to_int_fu_98_p1, "y1_to_int_fu_98_p1");
    sc_trace(mVcdFile, tmp_fu_84_p4, "tmp_fu_84_p4");
    sc_trace(mVcdFile, tmp_1_fu_94_p1, "tmp_1_fu_94_p1");
    sc_trace(mVcdFile, notrhs_fu_122_p2, "notrhs_fu_122_p2");
    sc_trace(mVcdFile, notlhs_fu_116_p2, "notlhs_fu_116_p2");
    sc_trace(mVcdFile, tmp_2_fu_102_p4, "tmp_2_fu_102_p4");
    sc_trace(mVcdFile, tmp_3_fu_112_p1, "tmp_3_fu_112_p1");
    sc_trace(mVcdFile, notrhs7_fu_140_p2, "notrhs7_fu_140_p2");
    sc_trace(mVcdFile, notlhs6_fu_134_p2, "notlhs6_fu_134_p2");
    sc_trace(mVcdFile, tmp_4_fu_128_p2, "tmp_4_fu_128_p2");
    sc_trace(mVcdFile, tmp_5_fu_146_p2, "tmp_5_fu_146_p2");
    sc_trace(mVcdFile, y2_to_int_fu_159_p1, "y2_to_int_fu_159_p1");
    sc_trace(mVcdFile, tmp_s_fu_163_p4, "tmp_s_fu_163_p4");
    sc_trace(mVcdFile, tmp_9_fu_173_p1, "tmp_9_fu_173_p1");
    sc_trace(mVcdFile, notrhs1_fu_183_p2, "notrhs1_fu_183_p2");
    sc_trace(mVcdFile, notlhs1_fu_177_p2, "notlhs1_fu_177_p2");
    sc_trace(mVcdFile, tmp_10_fu_189_p2, "tmp_10_fu_189_p2");
    sc_trace(mVcdFile, tmp_11_fu_195_p2, "tmp_11_fu_195_p2");
    sc_trace(mVcdFile, grp_fu_69_p2, "grp_fu_69_p2");
    sc_trace(mVcdFile, grp_fu_75_p2, "grp_fu_75_p2");
    sc_trace(mVcdFile, tmp_13_fu_201_p2, "tmp_13_fu_201_p2");
    sc_trace(mVcdFile, tmp_18_fu_219_p2, "tmp_18_fu_219_p2");
    sc_trace(mVcdFile, y1_assign_fu_230_p3, "y1_assign_fu_230_p3");
    sc_trace(mVcdFile, grp_fu_63_opcode, "grp_fu_63_opcode");
    sc_trace(mVcdFile, grp_fu_69_opcode, "grp_fu_69_opcode");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("cmp_max.hdltvin.dat");
    mHdltvoutHandle.open("cmp_max.hdltvout.dat");
}

cmp_max::~cmp_max() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete cmp_max_fcmp_32ns_32ns_1_1_U0;
    delete cmp_max_fcmp_32ns_32ns_1_1_U1;
}

void cmp_max::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_reg_270.read()))) {
        or_cond2_reg_280 = or_cond2_fu_224_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(en_read_read_fu_32_p2.read(), ap_const_lv1_0))) {
        or_cond_reg_270 = or_cond_fu_207_p2.read();
        tmp_16_reg_275 = tmp_16_fu_213_p2.read();
        tmp_6_reg_265 = tmp_6_fu_152_p2.read();
    }
}

void cmp_max::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void cmp_max::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void cmp_max::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void cmp_max::thread_ap_sig_bdd_19() {
    ap_sig_bdd_19 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void cmp_max::thread_ap_sig_bdd_60() {
    ap_sig_bdd_60 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void cmp_max::thread_ap_sig_bdd_70() {
    ap_sig_bdd_70 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void cmp_max::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_19.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void cmp_max::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_60.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void cmp_max::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_bdd_70.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void cmp_max::thread_en_read_read_fu_32_p2() {
    en_read_read_fu_32_p2 = en.read();
}

void cmp_max::thread_grp_fu_63_opcode() {
    grp_fu_63_opcode = ap_const_lv5_2;
}

void cmp_max::thread_grp_fu_63_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_63_p0 = y1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        grp_fu_63_p0 = y0.read();
    } else {
        grp_fu_63_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void cmp_max::thread_grp_fu_63_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_63_p1 = y0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        grp_fu_63_p1 = y1.read();
    } else {
        grp_fu_63_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void cmp_max::thread_grp_fu_69_opcode() {
    grp_fu_69_opcode = ap_const_lv5_2;
}

void cmp_max::thread_grp_fu_69_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_69_p0 = y1.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        grp_fu_69_p0 = y0.read();
    } else {
        grp_fu_69_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void cmp_max::thread_grp_fu_75_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        grp_fu_75_p0 = tmp_6_reg_265.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) {
        grp_fu_75_p0 = tmp_6_fu_152_p2.read();
    } else {
        grp_fu_75_p0 =  (sc_lv<1>) ("X");
    }
}

void cmp_max::thread_grp_fu_75_p2() {
    grp_fu_75_p2 = (grp_fu_75_p0.read() & grp_fu_63_p2.read());
}

void cmp_max::thread_max() {
    max = (!or_cond_reg_270.read()[0].is_01())? sc_lv<32>(): ((or_cond_reg_270.read()[0].to_bool())? y0.read(): y1_assign_fu_230_p3.read());
}

void cmp_max::thread_max_ap_vld() {
    if ((!esl_seteq<1,1,1>(en_read_read_fu_32_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()))) {
        max_ap_vld = ap_const_logic_1;
    } else {
        max_ap_vld = ap_const_logic_0;
    }
}

void cmp_max::thread_notlhs1_fu_177_p2() {
    notlhs1_fu_177_p2 = (!tmp_s_fu_163_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_s_fu_163_p4.read() != ap_const_lv8_FF);
}

void cmp_max::thread_notlhs6_fu_134_p2() {
    notlhs6_fu_134_p2 = (!tmp_2_fu_102_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_2_fu_102_p4.read() != ap_const_lv8_FF);
}

void cmp_max::thread_notlhs_fu_116_p2() {
    notlhs_fu_116_p2 = (!tmp_fu_84_p4.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<1>(): sc_lv<1>(tmp_fu_84_p4.read() != ap_const_lv8_FF);
}

void cmp_max::thread_notrhs1_fu_183_p2() {
    notrhs1_fu_183_p2 = (!tmp_9_fu_173_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_9_fu_173_p1.read() == ap_const_lv23_0);
}

void cmp_max::thread_notrhs7_fu_140_p2() {
    notrhs7_fu_140_p2 = (!tmp_3_fu_112_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_3_fu_112_p1.read() == ap_const_lv23_0);
}

void cmp_max::thread_notrhs_fu_122_p2() {
    notrhs_fu_122_p2 = (!tmp_1_fu_94_p1.read().is_01() || !ap_const_lv23_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1_fu_94_p1.read() == ap_const_lv23_0);
}

void cmp_max::thread_or_cond2_fu_224_p2() {
    or_cond2_fu_224_p2 = (grp_fu_75_p2.read() & tmp_18_fu_219_p2.read());
}

void cmp_max::thread_or_cond_fu_207_p2() {
    or_cond_fu_207_p2 = (grp_fu_75_p2.read() & tmp_13_fu_201_p2.read());
}

void cmp_max::thread_tmp_10_fu_189_p2() {
    tmp_10_fu_189_p2 = (notrhs1_fu_183_p2.read() | notlhs1_fu_177_p2.read());
}

void cmp_max::thread_tmp_11_fu_195_p2() {
    tmp_11_fu_195_p2 = (tmp_4_fu_128_p2.read() & tmp_10_fu_189_p2.read());
}

void cmp_max::thread_tmp_13_fu_201_p2() {
    tmp_13_fu_201_p2 = (tmp_11_fu_195_p2.read() & grp_fu_69_p2.read());
}

void cmp_max::thread_tmp_16_fu_213_p2() {
    tmp_16_fu_213_p2 = (tmp_5_fu_146_p2.read() & tmp_10_fu_189_p2.read());
}

void cmp_max::thread_tmp_18_fu_219_p2() {
    tmp_18_fu_219_p2 = (tmp_16_reg_275.read() & grp_fu_69_p2.read());
}

void cmp_max::thread_tmp_1_fu_94_p1() {
    tmp_1_fu_94_p1 = y0_to_int_fu_80_p1.read().range(23-1, 0);
}

void cmp_max::thread_tmp_2_fu_102_p4() {
    tmp_2_fu_102_p4 = y1_to_int_fu_98_p1.read().range(30, 23);
}

void cmp_max::thread_tmp_3_fu_112_p1() {
    tmp_3_fu_112_p1 = y1_to_int_fu_98_p1.read().range(23-1, 0);
}

void cmp_max::thread_tmp_4_fu_128_p2() {
    tmp_4_fu_128_p2 = (notrhs_fu_122_p2.read() | notlhs_fu_116_p2.read());
}

void cmp_max::thread_tmp_5_fu_146_p2() {
    tmp_5_fu_146_p2 = (notrhs7_fu_140_p2.read() | notlhs6_fu_134_p2.read());
}

void cmp_max::thread_tmp_6_fu_152_p2() {
    tmp_6_fu_152_p2 = (tmp_4_fu_128_p2.read() & tmp_5_fu_146_p2.read());
}

void cmp_max::thread_tmp_9_fu_173_p1() {
    tmp_9_fu_173_p1 = y2_to_int_fu_159_p1.read().range(23-1, 0);
}

void cmp_max::thread_tmp_fu_84_p4() {
    tmp_fu_84_p4 = y0_to_int_fu_80_p1.read().range(30, 23);
}

void cmp_max::thread_tmp_s_fu_163_p4() {
    tmp_s_fu_163_p4 = y2_to_int_fu_159_p1.read().range(30, 23);
}

void cmp_max::thread_y0_to_int_fu_80_p1() {
    y0_to_int_fu_80_p1 = y0.read();
}

void cmp_max::thread_y1_assign_fu_230_p3() {
    y1_assign_fu_230_p3 = (!or_cond2_reg_280.read()[0].is_01())? sc_lv<32>(): ((or_cond2_reg_280.read()[0].to_bool())? y1.read(): y2.read());
}

void cmp_max::thread_y1_to_int_fu_98_p1() {
    y1_to_int_fu_98_p1 = y1.read();
}

void cmp_max::thread_y2_to_int_fu_159_p1() {
    y2_to_int_fu_159_p1 = y2.read();
}

void cmp_max::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && esl_seteq<1,1,1>(en_read_read_fu_32_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else if ((!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) && !esl_seteq<1,1,1>(en_read_read_fu_32_p2.read(), ap_const_lv1_0))) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<3>) ("XXX");
            break;
    }
}

void cmp_max::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"y0\" :  \"" << y0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"y1\" :  \"" << y1.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"y2\" :  \"" << y2.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"max\" :  \"" << max.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"max_ap_vld\" :  \"" << max_ap_vld.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"en\" :  \"" << en.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
