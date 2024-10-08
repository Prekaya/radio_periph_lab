-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:radiocore:1.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY radiocore_0 IS
  PORT (
    FIFO_COUNT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    FIFO_READY : IN STD_LOGIC;
    FIFO_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    FIFO_VALID : OUT STD_LOGIC;
    aclk : IN STD_LOGIC;
    adc_pinc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    aresetn : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    tuner_pinc : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END radiocore_0;

ARCHITECTURE radiocore_0_arch OF radiocore_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF radiocore_0_arch: ARCHITECTURE IS "yes";
  COMPONENT radiocore IS
    PORT (
      FIFO_COUNT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      FIFO_READY : IN STD_LOGIC;
      FIFO_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      FIFO_VALID : OUT STD_LOGIC;
      aclk : IN STD_LOGIC;
      adc_pinc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      aresetn : IN STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      tuner_pinc : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT radiocore;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF radiocore_0_arch: ARCHITECTURE IS "radiocore,Vivado 2023.2.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF radiocore_0_arch : ARCHITECTURE IS "radiocore_0,radiocore,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF radiocore_0_arch: ARCHITECTURE IS "radiocore_0,radiocore,{x_ipProduct=Vivado 2023.2.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=radiocore,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF radiocore_0_arch: ARCHITECTURE IS "IPI";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME CLK.ACLK, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_RESET aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
BEGIN
  U0 : radiocore
    PORT MAP (
      FIFO_COUNT => FIFO_COUNT,
      FIFO_READY => FIFO_READY,
      FIFO_TDATA => FIFO_TDATA,
      FIFO_VALID => FIFO_VALID,
      aclk => aclk,
      adc_pinc => adc_pinc,
      aresetn => aresetn,
      m_axis_data_tdata => m_axis_data_tdata,
      m_axis_data_tvalid => m_axis_data_tvalid,
      tuner_pinc => tuner_pinc
    );
END radiocore_0_arch;
