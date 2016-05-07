// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "y0"
#define AUTOTB_TVIN_y0  "../tv/cdatafile/c.cmp_max.autotvin_y0.dat"
// wrapc file define: "y1"
#define AUTOTB_TVIN_y1  "../tv/cdatafile/c.cmp_max.autotvin_y1.dat"
// wrapc file define: "y2"
#define AUTOTB_TVIN_y2  "../tv/cdatafile/c.cmp_max.autotvin_y2.dat"
// wrapc file define: "max"
#define AUTOTB_TVOUT_max  "../tv/cdatafile/c.cmp_max.autotvout_max.dat"
// wrapc file define: "en"
#define AUTOTB_TVIN_en  "../tv/cdatafile/c.cmp_max.autotvin_en.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "max"
#define AUTOTB_TVOUT_PC_max  "../tv/rtldatafile/rtl.cmp_max.autotvout_max.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			y0_depth = 0;
			y1_depth = 0;
			y2_depth = 0;
			max_depth = 0;
			en_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{y0 " << y0_depth << "}\n";
			total_list << "{y1 " << y1_depth << "}\n";
			total_list << "{y2 " << y2_depth << "}\n";
			total_list << "{max " << max_depth << "}\n";
			total_list << "{en " << en_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int y0_depth;
		int y1_depth;
		int y2_depth;
		int max_depth;
		int en_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void cmp_max (
float y0,
float y1,
float y2,
float* max,
_Bool en);

#define cmp_max AESL_ORIG_DUT_cmp_max
extern "C" void cmp_max (
float y0,
float y1,
float y2,
float* max,
_Bool en);
#undef cmp_max

void cmp_max (
float y0,
float y1,
float y2,
float* max,
_Bool en)
{
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "max"
		aesl_fh.read(AUTOTB_TVOUT_PC_max, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_max, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_max, AESL_token); // data

			sc_bv<32> *max_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'max', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'max', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					max_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_max, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_max))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: max
				{
					// bitslice(31, 0)
					// {
						// celement: max(31, 0)
						// {
							sc_lv<32>* max_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: max(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(max[0]) != NULL) // check the null address if the c port is array or others
								{
									max_lv0_0_0_1[hls_map_index++].range(31, 0) = sc_bv<32>(max_pc_buffer[hls_map_index].range(31, 0));
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: max(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : max[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : max[0]
								// output_left_conversion : *(int*)&max[i_0]
								// output_type_conversion : (max_lv0_0_0_1[hls_map_index++]).to_uint64()
								if (&(max[0]) != NULL) // check the null address if the c port is array or others
								{
									*(int*)&max[i_0] = (max_lv0_0_0_1[hls_map_index++]).to_uint64();
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] max_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "y0"
		char* tvin_y0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y0);

		// "y1"
		char* tvin_y1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y1);

		// "y2"
		char* tvin_y2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_y2);

		// "max"
		char* tvout_max = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_max);

		// "en"
		char* tvin_en = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_en);

		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_y0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y0, tvin_y0);

		sc_bv<32> y0_tvin_wrapc_buffer;

		// RTL Name: y0
		{
			// bitslice(31, 0)
			{
				// celement: y0(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : y0
						// sub_1st_elem          : 
						// ori_name_1st_elem     : y0
						// regulate_c_name       : y0
						// input_type_conversion : *(int*)&y0
						if (&(y0) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y0_tmp_mem;
							y0_tmp_mem = *(int*)&y0;
							y0_tvin_wrapc_buffer.range(31, 0) = y0_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_y0, "%s\n", (y0_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y0, tvin_y0);
		}

		tcl_file.set_num(1, &tcl_file.y0_depth);
		sprintf(tvin_y0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y0, tvin_y0);

		// [[transaction]]
		sprintf(tvin_y1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);

		sc_bv<32> y1_tvin_wrapc_buffer;

		// RTL Name: y1
		{
			// bitslice(31, 0)
			{
				// celement: y1(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : y1
						// sub_1st_elem          : 
						// ori_name_1st_elem     : y1
						// regulate_c_name       : y1
						// input_type_conversion : *(int*)&y1
						if (&(y1) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y1_tmp_mem;
							y1_tmp_mem = *(int*)&y1;
							y1_tvin_wrapc_buffer.range(31, 0) = y1_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_y1, "%s\n", (y1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);
		}

		tcl_file.set_num(1, &tcl_file.y1_depth);
		sprintf(tvin_y1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y1, tvin_y1);

		// [[transaction]]
		sprintf(tvin_y2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);

		sc_bv<32> y2_tvin_wrapc_buffer;

		// RTL Name: y2
		{
			// bitslice(31, 0)
			{
				// celement: y2(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : y2
						// sub_1st_elem          : 
						// ori_name_1st_elem     : y2
						// regulate_c_name       : y2
						// input_type_conversion : *(int*)&y2
						if (&(y2) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> y2_tmp_mem;
							y2_tmp_mem = *(int*)&y2;
							y2_tvin_wrapc_buffer.range(31, 0) = y2_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_y2, "%s\n", (y2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);
		}

		tcl_file.set_num(1, &tcl_file.y2_depth);
		sprintf(tvin_y2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_y2, tvin_y2);

		// [[transaction]]
		sprintf(tvin_en, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_en, tvin_en);

		sc_bv<1> en_tvin_wrapc_buffer;

		// RTL Name: en
		{
			// bitslice(0, 0)
			{
				// celement: en(0, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : en
						// sub_1st_elem          : 
						// ori_name_1st_elem     : en
						// regulate_c_name       : en
						// input_type_conversion : en
						if (&(en) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> en_tmp_mem;
							en_tmp_mem = en;
							en_tvin_wrapc_buffer.range(0, 0) = en_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_en, "%s\n", (en_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_en, tvin_en);
		}

		tcl_file.set_num(1, &tcl_file.en_depth);
		sprintf(tvin_en, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_en, tvin_en);

// [call_c_dut] ---------->

		AESL_ORIG_DUT_cmp_max(y0, y1, y2, max, en);


		// [[transaction]]
		sprintf(tvout_max, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_max, tvout_max);

		sc_bv<32>* max_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: max
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: max(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : max[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : max[0]
						// regulate_c_name       : max
						// input_type_conversion : *(int*)&max[i_0]
						if (&(max[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> max_tmp_mem;
							max_tmp_mem = *(int*)&max[i_0];
							max_tvout_wrapc_buffer[hls_map_index++].range(31, 0) = max_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_max, "%s\n", (max_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_max, tvout_max);
		}

		tcl_file.set_num(1, &tcl_file.max_depth);
		sprintf(tvout_max, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_max, tvout_max);

		// release memory allocation
		delete [] max_tvout_wrapc_buffer;

		// release memory allocation: "y0"
		delete [] tvin_y0;
		// release memory allocation: "y1"
		delete [] tvin_y1;
		// release memory allocation: "y2"
		delete [] tvin_y2;
		// release memory allocation: "max"
		delete [] tvout_max;
		// release memory allocation: "en"
		delete [] tvin_en;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}
