// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
// Date        : Thu Aug 22 06:27:14 2024
// Host        : DESKTOP-8SS6HV0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Nana/Documents/EN742projects/FinalLab/ip_repo/full_radio/src/radiocore_0_2/radiocore_0_stub.v
// Design      : radiocore_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "radiocore,Vivado 2023.2.2" *)
module radiocore_0(FIFO_COUNT, FIFO_READY, FIFO_TDATA, FIFO_VALID, 
  aclk, adc_pinc, aresetn, m_axis_data_tdata, m_axis_data_tvalid, tuner_pinc)
/* synthesis syn_black_box black_box_pad_pin="FIFO_COUNT[31:0],FIFO_READY,FIFO_TDATA[31:0],FIFO_VALID,adc_pinc[31:0],aresetn,m_axis_data_tdata[31:0],m_axis_data_tvalid,tuner_pinc[31:0]" */
/* synthesis syn_force_seq_prim="aclk" */;
  output [31:0]FIFO_COUNT;
  input FIFO_READY;
  output [31:0]FIFO_TDATA;
  output FIFO_VALID;
  input aclk /* synthesis syn_isclock = 1 */;
  input [31:0]adc_pinc;
  input aresetn;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tvalid;
  input [31:0]tuner_pinc;
endmodule
