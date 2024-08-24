-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
-- Date        : Thu Aug 22 06:27:14 2024
-- Host        : DESKTOP-8SS6HV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Nana/Documents/EN742projects/FinalLab/ip_repo/full_radio/src/radiocore_0_2/radiocore_0_stub.vhdl
-- Design      : radiocore_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity radiocore_0 is
  Port ( 
    FIFO_COUNT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_READY : in STD_LOGIC;
    FIFO_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_VALID : out STD_LOGIC;
    aclk : in STD_LOGIC;
    adc_pinc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    tuner_pinc : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end radiocore_0;

architecture stub of radiocore_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FIFO_COUNT[31:0],FIFO_READY,FIFO_TDATA[31:0],FIFO_VALID,aclk,adc_pinc[31:0],aresetn,m_axis_data_tdata[31:0],m_axis_data_tvalid,tuner_pinc[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "radiocore,Vivado 2023.2.2";
begin
end;
