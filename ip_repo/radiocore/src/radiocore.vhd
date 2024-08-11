--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2.2 (win64) Build 4126759 Thu Feb  8 23:53:51 MST 2024
--Date        : Sat Aug 10 14:17:54 2024
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
    aclk : in STD_LOGIC;
    adc_pinc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aresetn : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    timer_counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
  component radiocore_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component radiocore_c_counter_binary_0_0;
  component radiocore_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component radiocore_xlconstant_0_1;
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
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmpy_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal cmpy_0_m_axis_dout_tdata1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal cmpy_0_m_axis_dout_tdata2 : STD_LOGIC_VECTOR ( 79 downto 0 );
  signal cmpy_0_m_axis_dout_tvalid : STD_LOGIC;
  signal fir1_m_axis_data_tvalid : STD_LOGIC;
  signal fir2_m_axis_data_tvalid : STD_LOGIC;
  signal padding_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_phase_tdata_0_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axis_phase_tdata_1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tuner_dds_M_AXIS_DATA_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tuner_dds_M_AXIS_DATA_TVALID : STD_LOGIC;
  signal tvalid_high_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir1_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir2_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET aresetn, CLK_DOMAIN radiocore_aclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of timer_counter : signal is "xilinx.com:signal:data:1.0 DATA.TIMER_COUNTER DATA";
  attribute X_INTERFACE_PARAMETER of timer_counter : signal is "XIL_INTERFACENAME DATA.TIMER_COUNTER, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 32}";
begin
  aclk_1 <= aclk;
  aresetn_1 <= aresetn;
  m_axis_data_tdata(31 downto 0) <= IQ_FIR2_dout(31 downto 0);
  m_axis_data_tvalid <= fir2_m_axis_data_tvalid;
  s_axis_phase_tdata_0_1(31 downto 0) <= tuner_pinc(31 downto 0);
  s_axis_phase_tdata_1_1(31 downto 0) <= adc_pinc(31 downto 0);
  timer_counter(31 downto 0) <= c_counter_binary_0_Q(31 downto 0);
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
      Din(79 downto 0) => cmpy_0_m_axis_dout_tdata2(79 downto 0),
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
      Din(79 downto 0) => cmpy_0_m_axis_dout_tdata2(79 downto 0),
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
c_counter_binary_0: component radiocore_c_counter_binary_0_0
     port map (
      CLK => aclk_1,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
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
      m_axis_data_tdata(79 downto 0) => cmpy_0_m_axis_dout_tdata2(79 downto 0),
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
