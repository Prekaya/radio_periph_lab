--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
--Date        : Thu Aug 22 06:21:00 2024
--Host        : DESKTOP-8SS6HV0 running 64-bit major release  (build 9200)
--Command     : generate_target radiocore.bd
--Design      : radiocore
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity radiocore is
  port (
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of radiocore : entity is "radiocore,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=radiocore,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of radiocore : entity is "radiocore.hwdef";
end radiocore;

architecture STRUCTURE of radiocore is
  component radiocore_fir_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component radiocore_fir_compiler_0_0;
  component radiocore_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_dds_compiler_0_0;
  component radiocore_dds_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_dds_compiler_0_1;
  component radiocore_cmpy_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  end component radiocore_cmpy_0_0;
  component radiocore_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 79 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_xlslice_0_0;
  component radiocore_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 79 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_xlslice_0_1;
  component radiocore_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_xlconcat_0_0;
  component radiocore_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_xlconstant_0_0;
  component radiocore_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_xlconcat_0_1;
  component radiocore_I_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_I_0;
  component radiocore_IQ_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_IQ_0;
  component radiocore_Q_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_Q_0;
  component radiocore_fir1_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 79 downto 0 )
  );
  end component radiocore_fir1_0;
  component radiocore_IQ_FIR1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_IQ_FIR1_0;
  component radiocore_I_FIR1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 79 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_I_FIR1_0;
  component radiocore_Q_FIR1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 79 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component radiocore_Q_FIR1_0;
  component radiocore_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component radiocore_xlconstant_0_1;
  component radiocore_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_axis_data_fifo_0_0;
  signal IQ_FIR2_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IQ_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal IQ_dout1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal I_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal I_Dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal I_Dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q_Dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Q_Dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal aclk_1 : STD_LOGIC;
  signal adc_dds_m_axis_data_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_dds_m_axis_data_tvalid : STD_LOGIC;
  signal aresetn_1 : STD_LOGIC;
  signal axis_broadcaster_0_m_axis_tdata : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal axis_data_fifo_0_axis_rd_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_m_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_m_axis_tvalid : STD_LOGIC;
  signal cmpy_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal cmpy_0_m_axis_dout_tdata1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal cmpy_0_m_axis_dout_tvalid : STD_LOGIC;
  signal fir1_m_axis_data_tvalid : STD_LOGIC;
  signal fir2_m_axis_data_tvalid : STD_LOGIC;
  signal m_axis_tready_0_1 : STD_LOGIC;
  signal padding_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_phase_tdata_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_phase_tdata_1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tuner_dds_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tuner_dds_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal tvalid_high_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir1_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir2_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET aresetn, CLK_DOMAIN radiocore_aclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  FIFO_COUNT(31 downto 0) <= axis_data_fifo_0_axis_rd_data_count(31 downto 0);
  FIFO_TDATA(31 downto 0) <= axis_data_fifo_0_m_axis_tdata(31 downto 0);
  FIFO_VALID <= axis_data_fifo_0_m_axis_tvalid;
  aclk_1 <= aclk;
  aresetn_1 <= aresetn;
  m_axis_data_tdata(31 downto 0) <= IQ_FIR2_dout(31 downto 0);
  m_axis_data_tvalid <= fir2_m_axis_data_tvalid;
  m_axis_tready_0_1 <= FIFO_READY;
  s_axis_phase_tdata_0_1(31 downto 0) <= tuner_pinc(31 downto 0);
  s_axis_phase_tdata_1_1(31 downto 0) <= adc_pinc(31 downto 0);
I: component radiocore_xlslice_0_1
     port map (
      Din(79 downto 0) => cmpy_0_m_axis_dout_tdata(79 downto 0),
      Dout(15 downto 0) => I_Dout(15 downto 0)
    );
IQ: component radiocore_xlconcat_0_0
     port map (
      In0(15 downto 0) => Q_Dout(15 downto 0),
      In1(15 downto 0) => I_Dout(15 downto 0),
      dout(31 downto 0) => IQ_dout(31 downto 0)
    );
IQ_FIR1: component radiocore_IQ_0
     port map (
      In0(15 downto 0) => Q_Dout1(15 downto 0),
      In1(15 downto 0) => I_Dout1(15 downto 0),
      dout(31 downto 0) => IQ_dout1(31 downto 0)
    );
IQ_FIR2: component radiocore_IQ_FIR1_0
     port map (
      In0(15 downto 0) => Q_Dout2(15 downto 0),
      In1(15 downto 0) => I_Dout2(15 downto 0),
      dout(31 downto 0) => IQ_FIR2_dout(31 downto 0)
    );
I_FIR1: component radiocore_I_0
     port map (
      Din(63 downto 0) => cmpy_0_m_axis_dout_tdata1(63 downto 0),
      Dout(15 downto 0) => I_Dout1(15 downto 0)
    );
I_FIR2: component radiocore_I_FIR1_0
     port map (
      Din(79 downto 0) => axis_broadcaster_0_m_axis_tdata(79 downto 0),
      Dout(15 downto 0) => I_Dout2(15 downto 0)
    );
Q: component radiocore_xlslice_0_0
     port map (
      Din(79 downto 0) => cmpy_0_m_axis_dout_tdata(79 downto 0),
      Dout(15 downto 0) => Q_Dout(15 downto 0)
    );
Q_FIR1: component radiocore_Q_0
     port map (
      Din(63 downto 0) => cmpy_0_m_axis_dout_tdata1(63 downto 0),
      Dout(15 downto 0) => Q_Dout1(15 downto 0)
    );
Q_FIR2: component radiocore_Q_FIR1_0
     port map (
      Din(79 downto 0) => axis_broadcaster_0_m_axis_tdata(79 downto 0),
      Dout(15 downto 0) => Q_Dout2(15 downto 0)
    );
adc_dds: component radiocore_dds_compiler_0_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axis_data_tdata(15 downto 0) => adc_dds_m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => adc_dds_m_axis_data_tvalid,
      s_axis_phase_tdata(31 downto 0) => s_axis_phase_tdata_1_1(31 downto 0),
      s_axis_phase_tvalid => tvalid_high_0_dout(0)
    );
axis_data_fifo_0: component radiocore_axis_data_fifo_0_0
     port map (
      axis_rd_data_count(31 downto 0) => axis_data_fifo_0_axis_rd_data_count(31 downto 0),
      m_axis_tdata(31 downto 0) => axis_data_fifo_0_m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready_0_1,
      m_axis_tvalid => axis_data_fifo_0_m_axis_tvalid,
      s_axis_aclk => aclk_1,
      s_axis_aresetn => aresetn_1,
      s_axis_tdata(31 downto 0) => IQ_FIR2_dout(31 downto 0),
      s_axis_tready => NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => fir2_m_axis_data_tvalid
    );
cmpy_0: component radiocore_cmpy_0_0
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axis_dout_tdata(79 downto 0) => cmpy_0_m_axis_dout_tdata(79 downto 0),
      m_axis_dout_tvalid => cmpy_0_m_axis_dout_tvalid,
      s_axis_a_tdata(31 downto 0) => xlconcat_0_dout(31 downto 0),
      s_axis_a_tvalid => adc_dds_m_axis_data_tvalid,
      s_axis_b_tdata(31 downto 0) => tuner_dds_M_AXIS_DATA_TDATA(31 downto 0),
      s_axis_b_tvalid => tuner_dds_M_AXIS_DATA_TVALID
    );
fir1: component radiocore_fir_compiler_0_0
     port map (
      aclk => aclk_1,
      m_axis_data_tdata(63 downto 0) => cmpy_0_m_axis_dout_tdata1(63 downto 0),
      m_axis_data_tvalid => fir1_m_axis_data_tvalid,
      s_axis_data_tdata(31 downto 0) => IQ_dout(31 downto 0),
      s_axis_data_tready => NLW_fir1_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => cmpy_0_m_axis_dout_tvalid
    );
fir2: component radiocore_fir1_0
     port map (
      aclk => aclk_1,
      m_axis_data_tdata(79 downto 0) => axis_broadcaster_0_m_axis_tdata(79 downto 0),
      m_axis_data_tvalid => fir2_m_axis_data_tvalid,
      s_axis_data_tdata(31 downto 0) => IQ_dout1(31 downto 0),
      s_axis_data_tready => NLW_fir2_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => fir1_m_axis_data_tvalid
    );
padding: component radiocore_xlconstant_0_0
     port map (
      dout(15 downto 0) => padding_dout(15 downto 0)
    );
tuner_dds: component radiocore_dds_compiler_0_1
     port map (
      aclk => aclk_1,
      aresetn => aresetn_1,
      m_axis_data_tdata(31 downto 0) => tuner_dds_M_AXIS_DATA_TDATA(31 downto 0),
      m_axis_data_tvalid => tuner_dds_M_AXIS_DATA_TVALID,
      s_axis_phase_tdata(31 downto 0) => s_axis_phase_tdata_0_1(31 downto 0),
      s_axis_phase_tvalid => tvalid_high_0_dout(0)
    );
tvalid_high_0: component radiocore_xlconstant_0_1
     port map (
      dout(0) => tvalid_high_0_dout(0)
    );
xlconcat_0: component radiocore_xlconcat_0_1
     port map (
      In0(15 downto 0) => adc_dds_m_axis_data_tdata(15 downto 0),
      In1(15 downto 0) => padding_dout(15 downto 0),
      dout(31 downto 0) => xlconcat_0_dout(31 downto 0)
    );
end STRUCTURE;
