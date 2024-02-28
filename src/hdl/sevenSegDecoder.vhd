--+----------------------------------------------------------------------------
--| 
--| COPYRIGHT 2017 United States Air Force Academy All rights reserved.
--| 
--| United States Air Force Academy     __  _______ ___    _________ 
--| Dept of Electrical &               / / / / ___//   |  / ____/   |
--| Computer Engineering              / / / /\__ \/ /| | / /_  / /| |
--| 2354 Fairchild Drive Ste 2F6     / /_/ /___/ / ___ |/ __/ / ___ |
--| USAF Academy, CO 80840           \____//____/_/  |_/_/   /_/  |_|
--| 
--| ---------------------------------------------------------------------------
--|
--| FILENAME      : sevenSegDecoder_tb.vhd (TEST BENCH)
--| AUTHOR(S)     : Lt Col Trimble
--| CREATED       : 01/01/2017
--| DESCRIPTION   : This file simply provides a template for all VHDL assignments
--|
--| DOCUMENTATION : Include all documentation statements in README.md
--|
--+----------------------------------------------------------------------------
--|
--| REQUIRED FILES :
--|
--|    Libraries : ieee
--|    Packages  : std_logic_1164, numeric_std, unisim
--|    Files     : LIST ANY DEPENDENCIES
--|
--+----------------------------------------------------------------------------
--|
--| NAMING CONVENSIONS :
--|
--|    xb_<port name>           = off-chip bidirectional port ( _pads file )
--|    xi_<port name>           = off-chip input port         ( _pads file )
--|    xo_<port name>           = off-chip output port        ( _pads file )
--|    b_<port name>            = on-chip bidirectional port
--|    i_<port name>            = on-chip input port
--|    o_<port name>            = on-chip output port
--|    c_<signal name>          = combinatorial signal
--|    f_<signal name>          = synchronous signal
--|    ff_<signal name>         = pipeline stage (ff_, fff_, etc.)
--|    <signal name>_n          = active low signal
--|    w_<signal name>          = top level wiring signal
--|    g_<generic name>         = generic
--|    k_<constant name>        = constant
--|    v_<variable name>        = variable
--|    sm_<state machine type>  = state machine type definition
--|    s_<signal name>          = state name
--|
--+----------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
entity sevenSegDecoder is
    port(
    i_D : in std_logic_vector (3 downto 0);
    o_S : out std_logic_vector (6 downto 0)
    );    

end sevenSegDecoder;

architecture sevenSegDecoder_arch of sevenSegDecoder is 
	
  -- declare the component of your top-level design unit under test (UUT)
  -- declare the component of your top-level design unit under test (UUT)
  --component sevenSegDecoder is
    --port(
      -- i_D : in std_logic_vector (3 downto 0);
       --o_S : out std_logic_vector (6 downto 0)
    --);    
  --end component;
       
    signal c_Sa: std_logic:= '1';
    signal c_Sb: std_logic:= '1';
    signal c_Sc: std_logic:= '1';
    signal c_Sd: std_logic:= '1';
    signal c_Se: std_logic:= '1';
    signal c_Sf: std_logic:= '1';
    signal c_Sg: std_logic:= '1';

  -- signals for the UUT

begin
	-- PORT MAPS ----------------------------------------
    -- map ports for any component instances (port mapping is like wiring hardware)

    o_S(0) <= c_Sa;
    o_S(1) <= c_Sb;
    o_S(2) <= c_Sc;
    o_S(3) <= c_Sd;
    o_S(4) <= c_Se;
    o_S(5) <= c_Sf;
    o_S(6) <= c_Sg;
    
    c_Sa <= '1' when( (i_D = "1100") or
                      (i_D = "1101") or
                      (i_D = "0100") or
                      (i_D = "0001") or
                      (i_D = "1011") )else '0';
                      
    c_Sb <= '1' when( (i_D = "1100") or
                      (i_D = "1110") or
                      (i_D = "0110") or
                      (i_D = "0101") or
                      (i_D = "1011") or
                      (i_D = "1111") )else '0';
                      
    c_Sc <= '1' when( (i_D = "1110") or
                      (i_D = "1111") or
                      (i_D = "1100") or
                      (i_D = "0010") )else '0'; 
                      
    c_Sd <= '1' when( (i_D = "1001") or
                      (i_D = "0001") or
                      (i_D = "1111") or
                      (i_D = "0111") or
                      (i_D = "0100") or                    
                      (i_D = "1010") )else '0';     
                      
    c_Se <= '1' when( (i_D = "0011") or
                      (i_D = "0001") or
                      (i_D = "1001") or
                      (i_D = "0100") or
                      (i_D = "0101") or                      
                      (i_D = "0111") )else '0';
                      
    c_Sf <= '1' when( (i_D = "1100") or
                      (i_D = "1101") or
                      (i_D = "0001") or
                      (i_D = "0010") or
                      (i_D = "0011") or
                      (i_D = "0111") )else '0'; 
                      
    c_Sg <= '1' when( (i_D = "0000") or
                      (i_D = "0001") or
                      (i_D = "0111") )else '0';  

end sevenSegDecoder_Arch;
