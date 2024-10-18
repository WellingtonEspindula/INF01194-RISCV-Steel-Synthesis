# ####################################################################

#  Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Tue Oct 15 15:08:47 -0300 2024

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design busca_padrao

create_clock -name "Bus2IP_Clk" -add -period 2.0 -waveform {0.0 1.0} [get_ports Bus2IP_Clk]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[7]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[7]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[6]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[6]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[5]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[5]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[4]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[4]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[3]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[3]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[2]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[2]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[1]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[1]}]
set_load -pin_load -min 0.0014 [get_ports {IP2Bus_Data[0]}]
set_load -pin_load -max 0.32 [get_ports {IP2Bus_Data[0]}]
set_load -pin_load -min 0.0014 [get_ports user_int]
set_load -pin_load -max 0.32 [get_ports user_int]
set_false_path -from [get_ports Bus2IP_Reset]
group_path -name C2C -from [list \
  [get_cells {EA_reg[2]}]  \
  [get_cells {EA_reg[3]}]  \
  [get_cells {address_reg[0]}]  \
  [get_cells {address_reg[2]}]  \
  [get_cells {address_reg[3]}]  \
  [get_cells {address_reg[4]}]  \
  [get_cells {address_reg[5]}]  \
  [get_cells {address_reg[6]}]  \
  [get_cells {address_reg[7]}]  \
  [get_cells {endx_reg[0]}]  \
  [get_cells {endx_reg[1]}]  \
  [get_cells {endx_reg[2]}]  \
  [get_cells {endx_reg[3]}]  \
  [get_cells reseta_bit_slv_reg0_reg]  \
  [get_cells {slv_reg_reg[0][0]}]  \
  [get_cells {slv_reg_reg[0][1]}]  \
  [get_cells {slv_reg_reg[0][2]}]  \
  [get_cells {slv_reg_reg[0][3]}]  \
  [get_cells {slv_reg_reg[0][4]}]  \
  [get_cells {slv_reg_reg[0][5]}]  \
  [get_cells {slv_reg_reg[0][6]}]  \
  [get_cells {slv_reg_reg[0][7]}]  \
  [get_cells {slv_reg_reg[1][0]}]  \
  [get_cells {slv_reg_reg[1][1]}]  \
  [get_cells {slv_reg_reg[1][2]}]  \
  [get_cells {slv_reg_reg[1][3]}]  \
  [get_cells {slv_reg_reg[1][4]}]  \
  [get_cells {slv_reg_reg[1][7]}]  \
  [get_cells {slv_reg_reg[2][0]}]  \
  [get_cells {slv_reg_reg[2][1]}]  \
  [get_cells {slv_reg_reg[2][2]}]  \
  [get_cells {slv_reg_reg[2][3]}]  \
  [get_cells {slv_reg_reg[2][4]}]  \
  [get_cells {slv_reg_reg[2][5]}]  \
  [get_cells {slv_reg_reg[2][6]}]  \
  [get_cells {slv_reg_reg[2][7]}]  \
  [get_cells {slv_reg_reg[3][0]}]  \
  [get_cells {slv_reg_reg[3][1]}]  \
  [get_cells {slv_reg_reg[3][2]}]  \
  [get_cells {slv_reg_reg[3][3]}]  \
  [get_cells {slv_reg_reg[3][4]}]  \
  [get_cells {slv_reg_reg[3][5]}]  \
  [get_cells {slv_reg_reg[3][7]}]  \
  [get_cells {slv_reg_reg[4][0]}]  \
  [get_cells {slv_reg_reg[4][1]}]  \
  [get_cells {slv_reg_reg[4][2]}]  \
  [get_cells {slv_reg_reg[4][3]}]  \
  [get_cells {slv_reg_reg[4][4]}]  \
  [get_cells {slv_reg_reg[4][5]}]  \
  [get_cells {slv_reg_reg[4][6]}]  \
  [get_cells {slv_reg_reg[4][7]}]  \
  [get_cells {slv_reg_reg[5][0]}]  \
  [get_cells {slv_reg_reg[5][1]}]  \
  [get_cells {slv_reg_reg[5][2]}]  \
  [get_cells {slv_reg_reg[5][3]}]  \
  [get_cells {slv_reg_reg[5][4]}]  \
  [get_cells {slv_reg_reg[5][5]}]  \
  [get_cells {slv_reg_reg[5][6]}]  \
  [get_cells {slv_reg_reg[5][7]}]  \
  [get_cells {slv_reg_reg[6][0]}]  \
  [get_cells {slv_reg_reg[6][1]}]  \
  [get_cells {slv_reg_reg[6][2]}]  \
  [get_cells {slv_reg_reg[6][3]}]  \
  [get_cells {slv_reg_reg[6][4]}]  \
  [get_cells {slv_reg_reg[6][5]}]  \
  [get_cells {slv_reg_reg[6][6]}]  \
  [get_cells {slv_reg_reg[6][7]}]  \
  [get_cells {slv_reg_reg[7][0]}]  \
  [get_cells {slv_reg_reg[7][1]}]  \
  [get_cells {slv_reg_reg[7][2]}]  \
  [get_cells {slv_reg_reg[7][3]}]  \
  [get_cells {slv_reg_reg[7][4]}]  \
  [get_cells {slv_reg_reg[7][5]}]  \
  [get_cells {slv_reg_reg[7][6]}]  \
  [get_cells {slv_reg_reg[7][7]}]  \
  [get_cells {slv_reg_reg[8][0]}]  \
  [get_cells {slv_reg_reg[8][1]}]  \
  [get_cells {slv_reg_reg[8][2]}]  \
  [get_cells {slv_reg_reg[8][3]}]  \
  [get_cells {slv_reg_reg[8][4]}]  \
  [get_cells {slv_reg_reg[8][5]}]  \
  [get_cells {slv_reg_reg[8][6]}]  \
  [get_cells {slv_reg_reg[8][7]}]  \
  [get_cells user_int_reg]  \
  [get_cells {slv_reg_reg[11][0]}]  \
  [get_cells {slv_reg_reg[11][1]}]  \
  [get_cells {slv_reg_reg[11][2]}]  \
  [get_cells {slv_reg_reg[11][3]}]  \
  [get_cells {slv_reg_reg[12][0]}]  \
  [get_cells {slv_reg_reg[12][1]}]  \
  [get_cells {slv_reg_reg[12][2]}]  \
  [get_cells {slv_reg_reg[12][3]}]  \
  [get_cells {slv_reg_reg[13][0]}]  \
  [get_cells {slv_reg_reg[13][1]}]  \
  [get_cells {slv_reg_reg[13][2]}]  \
  [get_cells {slv_reg_reg[13][3]}]  \
  [get_cells {slv_reg_reg[14][0]}]  \
  [get_cells {slv_reg_reg[14][1]}]  \
  [get_cells {slv_reg_reg[14][2]}]  \
  [get_cells {slv_reg_reg[14][3]}]  \
  [get_cells {endy_reg[0]}]  \
  [get_cells {endy_reg[1]}]  \
  [get_cells {endy_reg[2]}]  \
  [get_cells {endy_reg[3]}]  \
  [get_cells {address_reg[1]}]  \
  [get_cells {EA_reg[1]}]  \
  [get_cells {slv_reg_reg[10][4]}]  \
  [get_cells {slv_reg_reg[10][3]}]  \
  [get_cells {slv_reg_reg[10][2]}]  \
  [get_cells {slv_reg_reg[10][1]}]  \
  [get_cells {slv_reg_reg[10][0]}]  \
  [get_cells {slv_reg_reg[3][6]}]  \
  [get_cells {slv_reg_reg[1][6]}]  \
  [get_cells {slv_reg_reg[9][0]}]  \
  [get_cells {slv_reg_reg[1][5]}]  \
  [get_cells {EA_reg[0]}] ] -to [list \
  [get_cells RC_CG_HIER_INST7/enl_reg]  \
  [get_cells RC_CG_HIER_INST6/enl_reg]  \
  [get_cells RC_CG_HIER_INST5/enl_reg]  \
  [get_cells RC_CG_HIER_INST4/enl_reg]  \
  [get_cells RC_CG_HIER_INST14/enl_reg]  \
  [get_cells RC_CG_HIER_INST11/enl_reg]  \
  [get_cells RC_CG_HIER_INST3/enl_reg]  \
  [get_cells RC_CG_HIER_INST2/enl_reg]  \
  [get_cells RC_CG_HIER_INST13/enl_reg]  \
  [get_cells RC_CG_HIER_INST16/enl_reg]  \
  [get_cells RC_CG_HIER_INST9/enl_reg]  \
  [get_cells RC_CG_HIER_INST8/enl_reg]  \
  [get_cells RC_CG_HIER_INST15/enl_reg]  \
  [get_cells RC_CG_HIER_INST12/enl_reg]  \
  [get_cells RC_CG_HIER_INST10/enl_reg]  \
  [get_cells RC_CG_HIER_INST1/enl_reg]  \
  [get_cells {EA_reg[2]}]  \
  [get_cells {EA_reg[3]}]  \
  [get_cells {address_reg[0]}]  \
  [get_cells {address_reg[2]}]  \
  [get_cells {address_reg[3]}]  \
  [get_cells {address_reg[4]}]  \
  [get_cells {address_reg[5]}]  \
  [get_cells {address_reg[6]}]  \
  [get_cells {address_reg[7]}]  \
  [get_cells {endx_reg[0]}]  \
  [get_cells {endx_reg[1]}]  \
  [get_cells {endx_reg[2]}]  \
  [get_cells {endx_reg[3]}]  \
  [get_cells reseta_bit_slv_reg0_reg]  \
  [get_cells {slv_reg_reg[0][0]}]  \
  [get_cells {slv_reg_reg[0][1]}]  \
  [get_cells {slv_reg_reg[0][2]}]  \
  [get_cells {slv_reg_reg[0][3]}]  \
  [get_cells {slv_reg_reg[0][4]}]  \
  [get_cells {slv_reg_reg[0][5]}]  \
  [get_cells {slv_reg_reg[0][6]}]  \
  [get_cells {slv_reg_reg[0][7]}]  \
  [get_cells {slv_reg_reg[1][0]}]  \
  [get_cells {slv_reg_reg[1][1]}]  \
  [get_cells {slv_reg_reg[1][2]}]  \
  [get_cells {slv_reg_reg[1][3]}]  \
  [get_cells {slv_reg_reg[1][4]}]  \
  [get_cells {slv_reg_reg[1][7]}]  \
  [get_cells {slv_reg_reg[2][0]}]  \
  [get_cells {slv_reg_reg[2][1]}]  \
  [get_cells {slv_reg_reg[2][2]}]  \
  [get_cells {slv_reg_reg[2][3]}]  \
  [get_cells {slv_reg_reg[2][4]}]  \
  [get_cells {slv_reg_reg[2][5]}]  \
  [get_cells {slv_reg_reg[2][6]}]  \
  [get_cells {slv_reg_reg[2][7]}]  \
  [get_cells {slv_reg_reg[3][0]}]  \
  [get_cells {slv_reg_reg[3][1]}]  \
  [get_cells {slv_reg_reg[3][2]}]  \
  [get_cells {slv_reg_reg[3][3]}]  \
  [get_cells {slv_reg_reg[3][4]}]  \
  [get_cells {slv_reg_reg[3][5]}]  \
  [get_cells {slv_reg_reg[3][7]}]  \
  [get_cells {slv_reg_reg[4][0]}]  \
  [get_cells {slv_reg_reg[4][1]}]  \
  [get_cells {slv_reg_reg[4][2]}]  \
  [get_cells {slv_reg_reg[4][3]}]  \
  [get_cells {slv_reg_reg[4][4]}]  \
  [get_cells {slv_reg_reg[4][5]}]  \
  [get_cells {slv_reg_reg[4][6]}]  \
  [get_cells {slv_reg_reg[4][7]}]  \
  [get_cells {slv_reg_reg[5][0]}]  \
  [get_cells {slv_reg_reg[5][1]}]  \
  [get_cells {slv_reg_reg[5][2]}]  \
  [get_cells {slv_reg_reg[5][3]}]  \
  [get_cells {slv_reg_reg[5][4]}]  \
  [get_cells {slv_reg_reg[5][5]}]  \
  [get_cells {slv_reg_reg[5][6]}]  \
  [get_cells {slv_reg_reg[5][7]}]  \
  [get_cells {slv_reg_reg[6][0]}]  \
  [get_cells {slv_reg_reg[6][1]}]  \
  [get_cells {slv_reg_reg[6][2]}]  \
  [get_cells {slv_reg_reg[6][3]}]  \
  [get_cells {slv_reg_reg[6][4]}]  \
  [get_cells {slv_reg_reg[6][5]}]  \
  [get_cells {slv_reg_reg[6][6]}]  \
  [get_cells {slv_reg_reg[6][7]}]  \
  [get_cells {slv_reg_reg[7][0]}]  \
  [get_cells {slv_reg_reg[7][1]}]  \
  [get_cells {slv_reg_reg[7][2]}]  \
  [get_cells {slv_reg_reg[7][3]}]  \
  [get_cells {slv_reg_reg[7][4]}]  \
  [get_cells {slv_reg_reg[7][5]}]  \
  [get_cells {slv_reg_reg[7][6]}]  \
  [get_cells {slv_reg_reg[7][7]}]  \
  [get_cells {slv_reg_reg[8][0]}]  \
  [get_cells {slv_reg_reg[8][1]}]  \
  [get_cells {slv_reg_reg[8][2]}]  \
  [get_cells {slv_reg_reg[8][3]}]  \
  [get_cells {slv_reg_reg[8][4]}]  \
  [get_cells {slv_reg_reg[8][5]}]  \
  [get_cells {slv_reg_reg[8][6]}]  \
  [get_cells {slv_reg_reg[8][7]}]  \
  [get_cells user_int_reg]  \
  [get_cells {slv_reg_reg[11][0]}]  \
  [get_cells {slv_reg_reg[11][1]}]  \
  [get_cells {slv_reg_reg[11][2]}]  \
  [get_cells {slv_reg_reg[11][3]}]  \
  [get_cells {slv_reg_reg[12][0]}]  \
  [get_cells {slv_reg_reg[12][1]}]  \
  [get_cells {slv_reg_reg[12][2]}]  \
  [get_cells {slv_reg_reg[12][3]}]  \
  [get_cells {slv_reg_reg[13][0]}]  \
  [get_cells {slv_reg_reg[13][1]}]  \
  [get_cells {slv_reg_reg[13][2]}]  \
  [get_cells {slv_reg_reg[13][3]}]  \
  [get_cells {slv_reg_reg[14][0]}]  \
  [get_cells {slv_reg_reg[14][1]}]  \
  [get_cells {slv_reg_reg[14][2]}]  \
  [get_cells {slv_reg_reg[14][3]}]  \
  [get_cells {endy_reg[0]}]  \
  [get_cells {endy_reg[1]}]  \
  [get_cells {endy_reg[2]}]  \
  [get_cells {endy_reg[3]}]  \
  [get_cells {address_reg[1]}]  \
  [get_cells {EA_reg[1]}]  \
  [get_cells {slv_reg_reg[10][4]}]  \
  [get_cells {slv_reg_reg[10][3]}]  \
  [get_cells {slv_reg_reg[10][2]}]  \
  [get_cells {slv_reg_reg[10][1]}]  \
  [get_cells {slv_reg_reg[10][0]}]  \
  [get_cells {slv_reg_reg[3][6]}]  \
  [get_cells {slv_reg_reg[1][6]}]  \
  [get_cells {slv_reg_reg[9][0]}]  \
  [get_cells {slv_reg_reg[1][5]}]  \
  [get_cells {EA_reg[0]}] ]
group_path -name C2O -from [list \
  [get_cells {EA_reg[2]}]  \
  [get_cells {EA_reg[3]}]  \
  [get_cells {address_reg[0]}]  \
  [get_cells {address_reg[2]}]  \
  [get_cells {address_reg[3]}]  \
  [get_cells {address_reg[4]}]  \
  [get_cells {address_reg[5]}]  \
  [get_cells {address_reg[6]}]  \
  [get_cells {address_reg[7]}]  \
  [get_cells {endx_reg[0]}]  \
  [get_cells {endx_reg[1]}]  \
  [get_cells {endx_reg[2]}]  \
  [get_cells {endx_reg[3]}]  \
  [get_cells reseta_bit_slv_reg0_reg]  \
  [get_cells {slv_reg_reg[0][0]}]  \
  [get_cells {slv_reg_reg[0][1]}]  \
  [get_cells {slv_reg_reg[0][2]}]  \
  [get_cells {slv_reg_reg[0][3]}]  \
  [get_cells {slv_reg_reg[0][4]}]  \
  [get_cells {slv_reg_reg[0][5]}]  \
  [get_cells {slv_reg_reg[0][6]}]  \
  [get_cells {slv_reg_reg[0][7]}]  \
  [get_cells {slv_reg_reg[1][0]}]  \
  [get_cells {slv_reg_reg[1][1]}]  \
  [get_cells {slv_reg_reg[1][2]}]  \
  [get_cells {slv_reg_reg[1][3]}]  \
  [get_cells {slv_reg_reg[1][4]}]  \
  [get_cells {slv_reg_reg[1][7]}]  \
  [get_cells {slv_reg_reg[2][0]}]  \
  [get_cells {slv_reg_reg[2][1]}]  \
  [get_cells {slv_reg_reg[2][2]}]  \
  [get_cells {slv_reg_reg[2][3]}]  \
  [get_cells {slv_reg_reg[2][4]}]  \
  [get_cells {slv_reg_reg[2][5]}]  \
  [get_cells {slv_reg_reg[2][6]}]  \
  [get_cells {slv_reg_reg[2][7]}]  \
  [get_cells {slv_reg_reg[3][0]}]  \
  [get_cells {slv_reg_reg[3][1]}]  \
  [get_cells {slv_reg_reg[3][2]}]  \
  [get_cells {slv_reg_reg[3][3]}]  \
  [get_cells {slv_reg_reg[3][4]}]  \
  [get_cells {slv_reg_reg[3][5]}]  \
  [get_cells {slv_reg_reg[3][7]}]  \
  [get_cells {slv_reg_reg[4][0]}]  \
  [get_cells {slv_reg_reg[4][1]}]  \
  [get_cells {slv_reg_reg[4][2]}]  \
  [get_cells {slv_reg_reg[4][3]}]  \
  [get_cells {slv_reg_reg[4][4]}]  \
  [get_cells {slv_reg_reg[4][5]}]  \
  [get_cells {slv_reg_reg[4][6]}]  \
  [get_cells {slv_reg_reg[4][7]}]  \
  [get_cells {slv_reg_reg[5][0]}]  \
  [get_cells {slv_reg_reg[5][1]}]  \
  [get_cells {slv_reg_reg[5][2]}]  \
  [get_cells {slv_reg_reg[5][3]}]  \
  [get_cells {slv_reg_reg[5][4]}]  \
  [get_cells {slv_reg_reg[5][5]}]  \
  [get_cells {slv_reg_reg[5][6]}]  \
  [get_cells {slv_reg_reg[5][7]}]  \
  [get_cells {slv_reg_reg[6][0]}]  \
  [get_cells {slv_reg_reg[6][1]}]  \
  [get_cells {slv_reg_reg[6][2]}]  \
  [get_cells {slv_reg_reg[6][3]}]  \
  [get_cells {slv_reg_reg[6][4]}]  \
  [get_cells {slv_reg_reg[6][5]}]  \
  [get_cells {slv_reg_reg[6][6]}]  \
  [get_cells {slv_reg_reg[6][7]}]  \
  [get_cells {slv_reg_reg[7][0]}]  \
  [get_cells {slv_reg_reg[7][1]}]  \
  [get_cells {slv_reg_reg[7][2]}]  \
  [get_cells {slv_reg_reg[7][3]}]  \
  [get_cells {slv_reg_reg[7][4]}]  \
  [get_cells {slv_reg_reg[7][5]}]  \
  [get_cells {slv_reg_reg[7][6]}]  \
  [get_cells {slv_reg_reg[7][7]}]  \
  [get_cells {slv_reg_reg[8][0]}]  \
  [get_cells {slv_reg_reg[8][1]}]  \
  [get_cells {slv_reg_reg[8][2]}]  \
  [get_cells {slv_reg_reg[8][3]}]  \
  [get_cells {slv_reg_reg[8][4]}]  \
  [get_cells {slv_reg_reg[8][5]}]  \
  [get_cells {slv_reg_reg[8][6]}]  \
  [get_cells {slv_reg_reg[8][7]}]  \
  [get_cells user_int_reg]  \
  [get_cells {slv_reg_reg[11][0]}]  \
  [get_cells {slv_reg_reg[11][1]}]  \
  [get_cells {slv_reg_reg[11][2]}]  \
  [get_cells {slv_reg_reg[11][3]}]  \
  [get_cells {slv_reg_reg[12][0]}]  \
  [get_cells {slv_reg_reg[12][1]}]  \
  [get_cells {slv_reg_reg[12][2]}]  \
  [get_cells {slv_reg_reg[12][3]}]  \
  [get_cells {slv_reg_reg[13][0]}]  \
  [get_cells {slv_reg_reg[13][1]}]  \
  [get_cells {slv_reg_reg[13][2]}]  \
  [get_cells {slv_reg_reg[13][3]}]  \
  [get_cells {slv_reg_reg[14][0]}]  \
  [get_cells {slv_reg_reg[14][1]}]  \
  [get_cells {slv_reg_reg[14][2]}]  \
  [get_cells {slv_reg_reg[14][3]}]  \
  [get_cells {endy_reg[0]}]  \
  [get_cells {endy_reg[1]}]  \
  [get_cells {endy_reg[2]}]  \
  [get_cells {endy_reg[3]}]  \
  [get_cells {address_reg[1]}]  \
  [get_cells {EA_reg[1]}]  \
  [get_cells {slv_reg_reg[10][4]}]  \
  [get_cells {slv_reg_reg[10][3]}]  \
  [get_cells {slv_reg_reg[10][2]}]  \
  [get_cells {slv_reg_reg[10][1]}]  \
  [get_cells {slv_reg_reg[10][0]}]  \
  [get_cells {slv_reg_reg[3][6]}]  \
  [get_cells {slv_reg_reg[1][6]}]  \
  [get_cells {slv_reg_reg[9][0]}]  \
  [get_cells {slv_reg_reg[1][5]}]  \
  [get_cells {EA_reg[0]}] ] -to [list \
  [get_ports {IP2Bus_Data[7]}]  \
  [get_ports {IP2Bus_Data[6]}]  \
  [get_ports {IP2Bus_Data[5]}]  \
  [get_ports {IP2Bus_Data[4]}]  \
  [get_ports {IP2Bus_Data[3]}]  \
  [get_ports {IP2Bus_Data[2]}]  \
  [get_ports {IP2Bus_Data[1]}]  \
  [get_ports {IP2Bus_Data[0]}]  \
  [get_ports user_int] ]
group_path -name I2C -from [list \
  [get_ports Bus2IP_Clk]  \
  [get_ports Bus2IP_Reset]  \
  [get_ports {Bus2IP_Data[7]}]  \
  [get_ports {Bus2IP_Data[6]}]  \
  [get_ports {Bus2IP_Data[5]}]  \
  [get_ports {Bus2IP_Data[4]}]  \
  [get_ports {Bus2IP_Data[3]}]  \
  [get_ports {Bus2IP_Data[2]}]  \
  [get_ports {Bus2IP_Data[1]}]  \
  [get_ports {Bus2IP_Data[0]}]  \
  [get_ports {Bus2IP_RdCE[0]}]  \
  [get_ports {Bus2IP_RdCE[1]}]  \
  [get_ports {Bus2IP_RdCE[2]}]  \
  [get_ports {Bus2IP_RdCE[3]}]  \
  [get_ports {Bus2IP_RdCE[4]}]  \
  [get_ports {Bus2IP_RdCE[5]}]  \
  [get_ports {Bus2IP_RdCE[6]}]  \
  [get_ports {Bus2IP_RdCE[7]}]  \
  [get_ports {Bus2IP_RdCE[8]}]  \
  [get_ports {Bus2IP_RdCE[9]}]  \
  [get_ports {Bus2IP_RdCE[10]}]  \
  [get_ports {Bus2IP_RdCE[11]}]  \
  [get_ports {Bus2IP_RdCE[12]}]  \
  [get_ports {Bus2IP_RdCE[13]}]  \
  [get_ports {Bus2IP_RdCE[14]}]  \
  [get_ports {Bus2IP_WrCE[0]}]  \
  [get_ports {Bus2IP_WrCE[1]}]  \
  [get_ports {Bus2IP_WrCE[2]}]  \
  [get_ports {Bus2IP_WrCE[3]}]  \
  [get_ports {Bus2IP_WrCE[4]}]  \
  [get_ports {Bus2IP_WrCE[5]}]  \
  [get_ports {Bus2IP_WrCE[6]}]  \
  [get_ports {Bus2IP_WrCE[7]}]  \
  [get_ports {Bus2IP_WrCE[8]}]  \
  [get_ports {Bus2IP_WrCE[9]}]  \
  [get_ports {Bus2IP_WrCE[10]}]  \
  [get_ports {Bus2IP_WrCE[11]}]  \
  [get_ports {Bus2IP_WrCE[12]}]  \
  [get_ports {Bus2IP_WrCE[13]}]  \
  [get_ports {Bus2IP_WrCE[14]}] ] -to [list \
  [get_cells RC_CG_HIER_INST7/enl_reg]  \
  [get_cells RC_CG_HIER_INST6/enl_reg]  \
  [get_cells RC_CG_HIER_INST5/enl_reg]  \
  [get_cells RC_CG_HIER_INST4/enl_reg]  \
  [get_cells RC_CG_HIER_INST14/enl_reg]  \
  [get_cells RC_CG_HIER_INST11/enl_reg]  \
  [get_cells RC_CG_HIER_INST3/enl_reg]  \
  [get_cells RC_CG_HIER_INST2/enl_reg]  \
  [get_cells RC_CG_HIER_INST13/enl_reg]  \
  [get_cells RC_CG_HIER_INST16/enl_reg]  \
  [get_cells RC_CG_HIER_INST9/enl_reg]  \
  [get_cells RC_CG_HIER_INST8/enl_reg]  \
  [get_cells RC_CG_HIER_INST15/enl_reg]  \
  [get_cells RC_CG_HIER_INST12/enl_reg]  \
  [get_cells RC_CG_HIER_INST10/enl_reg]  \
  [get_cells RC_CG_HIER_INST1/enl_reg]  \
  [get_cells {EA_reg[2]}]  \
  [get_cells {EA_reg[3]}]  \
  [get_cells {address_reg[0]}]  \
  [get_cells {address_reg[2]}]  \
  [get_cells {address_reg[3]}]  \
  [get_cells {address_reg[4]}]  \
  [get_cells {address_reg[5]}]  \
  [get_cells {address_reg[6]}]  \
  [get_cells {address_reg[7]}]  \
  [get_cells {endx_reg[0]}]  \
  [get_cells {endx_reg[1]}]  \
  [get_cells {endx_reg[2]}]  \
  [get_cells {endx_reg[3]}]  \
  [get_cells reseta_bit_slv_reg0_reg]  \
  [get_cells {slv_reg_reg[0][0]}]  \
  [get_cells {slv_reg_reg[0][1]}]  \
  [get_cells {slv_reg_reg[0][2]}]  \
  [get_cells {slv_reg_reg[0][3]}]  \
  [get_cells {slv_reg_reg[0][4]}]  \
  [get_cells {slv_reg_reg[0][5]}]  \
  [get_cells {slv_reg_reg[0][6]}]  \
  [get_cells {slv_reg_reg[0][7]}]  \
  [get_cells {slv_reg_reg[1][0]}]  \
  [get_cells {slv_reg_reg[1][1]}]  \
  [get_cells {slv_reg_reg[1][2]}]  \
  [get_cells {slv_reg_reg[1][3]}]  \
  [get_cells {slv_reg_reg[1][4]}]  \
  [get_cells {slv_reg_reg[1][7]}]  \
  [get_cells {slv_reg_reg[2][0]}]  \
  [get_cells {slv_reg_reg[2][1]}]  \
  [get_cells {slv_reg_reg[2][2]}]  \
  [get_cells {slv_reg_reg[2][3]}]  \
  [get_cells {slv_reg_reg[2][4]}]  \
  [get_cells {slv_reg_reg[2][5]}]  \
  [get_cells {slv_reg_reg[2][6]}]  \
  [get_cells {slv_reg_reg[2][7]}]  \
  [get_cells {slv_reg_reg[3][0]}]  \
  [get_cells {slv_reg_reg[3][1]}]  \
  [get_cells {slv_reg_reg[3][2]}]  \
  [get_cells {slv_reg_reg[3][3]}]  \
  [get_cells {slv_reg_reg[3][4]}]  \
  [get_cells {slv_reg_reg[3][5]}]  \
  [get_cells {slv_reg_reg[3][7]}]  \
  [get_cells {slv_reg_reg[4][0]}]  \
  [get_cells {slv_reg_reg[4][1]}]  \
  [get_cells {slv_reg_reg[4][2]}]  \
  [get_cells {slv_reg_reg[4][3]}]  \
  [get_cells {slv_reg_reg[4][4]}]  \
  [get_cells {slv_reg_reg[4][5]}]  \
  [get_cells {slv_reg_reg[4][6]}]  \
  [get_cells {slv_reg_reg[4][7]}]  \
  [get_cells {slv_reg_reg[5][0]}]  \
  [get_cells {slv_reg_reg[5][1]}]  \
  [get_cells {slv_reg_reg[5][2]}]  \
  [get_cells {slv_reg_reg[5][3]}]  \
  [get_cells {slv_reg_reg[5][4]}]  \
  [get_cells {slv_reg_reg[5][5]}]  \
  [get_cells {slv_reg_reg[5][6]}]  \
  [get_cells {slv_reg_reg[5][7]}]  \
  [get_cells {slv_reg_reg[6][0]}]  \
  [get_cells {slv_reg_reg[6][1]}]  \
  [get_cells {slv_reg_reg[6][2]}]  \
  [get_cells {slv_reg_reg[6][3]}]  \
  [get_cells {slv_reg_reg[6][4]}]  \
  [get_cells {slv_reg_reg[6][5]}]  \
  [get_cells {slv_reg_reg[6][6]}]  \
  [get_cells {slv_reg_reg[6][7]}]  \
  [get_cells {slv_reg_reg[7][0]}]  \
  [get_cells {slv_reg_reg[7][1]}]  \
  [get_cells {slv_reg_reg[7][2]}]  \
  [get_cells {slv_reg_reg[7][3]}]  \
  [get_cells {slv_reg_reg[7][4]}]  \
  [get_cells {slv_reg_reg[7][5]}]  \
  [get_cells {slv_reg_reg[7][6]}]  \
  [get_cells {slv_reg_reg[7][7]}]  \
  [get_cells {slv_reg_reg[8][0]}]  \
  [get_cells {slv_reg_reg[8][1]}]  \
  [get_cells {slv_reg_reg[8][2]}]  \
  [get_cells {slv_reg_reg[8][3]}]  \
  [get_cells {slv_reg_reg[8][4]}]  \
  [get_cells {slv_reg_reg[8][5]}]  \
  [get_cells {slv_reg_reg[8][6]}]  \
  [get_cells {slv_reg_reg[8][7]}]  \
  [get_cells user_int_reg]  \
  [get_cells {slv_reg_reg[11][0]}]  \
  [get_cells {slv_reg_reg[11][1]}]  \
  [get_cells {slv_reg_reg[11][2]}]  \
  [get_cells {slv_reg_reg[11][3]}]  \
  [get_cells {slv_reg_reg[12][0]}]  \
  [get_cells {slv_reg_reg[12][1]}]  \
  [get_cells {slv_reg_reg[12][2]}]  \
  [get_cells {slv_reg_reg[12][3]}]  \
  [get_cells {slv_reg_reg[13][0]}]  \
  [get_cells {slv_reg_reg[13][1]}]  \
  [get_cells {slv_reg_reg[13][2]}]  \
  [get_cells {slv_reg_reg[13][3]}]  \
  [get_cells {slv_reg_reg[14][0]}]  \
  [get_cells {slv_reg_reg[14][1]}]  \
  [get_cells {slv_reg_reg[14][2]}]  \
  [get_cells {slv_reg_reg[14][3]}]  \
  [get_cells {endy_reg[0]}]  \
  [get_cells {endy_reg[1]}]  \
  [get_cells {endy_reg[2]}]  \
  [get_cells {endy_reg[3]}]  \
  [get_cells {address_reg[1]}]  \
  [get_cells {EA_reg[1]}]  \
  [get_cells {slv_reg_reg[10][4]}]  \
  [get_cells {slv_reg_reg[10][3]}]  \
  [get_cells {slv_reg_reg[10][2]}]  \
  [get_cells {slv_reg_reg[10][1]}]  \
  [get_cells {slv_reg_reg[10][0]}]  \
  [get_cells {slv_reg_reg[3][6]}]  \
  [get_cells {slv_reg_reg[1][6]}]  \
  [get_cells {slv_reg_reg[9][0]}]  \
  [get_cells {slv_reg_reg[1][5]}]  \
  [get_cells {EA_reg[0]}] ]
group_path -name I2O -from [list \
  [get_ports Bus2IP_Clk]  \
  [get_ports Bus2IP_Reset]  \
  [get_ports {Bus2IP_Data[7]}]  \
  [get_ports {Bus2IP_Data[6]}]  \
  [get_ports {Bus2IP_Data[5]}]  \
  [get_ports {Bus2IP_Data[4]}]  \
  [get_ports {Bus2IP_Data[3]}]  \
  [get_ports {Bus2IP_Data[2]}]  \
  [get_ports {Bus2IP_Data[1]}]  \
  [get_ports {Bus2IP_Data[0]}]  \
  [get_ports {Bus2IP_RdCE[0]}]  \
  [get_ports {Bus2IP_RdCE[1]}]  \
  [get_ports {Bus2IP_RdCE[2]}]  \
  [get_ports {Bus2IP_RdCE[3]}]  \
  [get_ports {Bus2IP_RdCE[4]}]  \
  [get_ports {Bus2IP_RdCE[5]}]  \
  [get_ports {Bus2IP_RdCE[6]}]  \
  [get_ports {Bus2IP_RdCE[7]}]  \
  [get_ports {Bus2IP_RdCE[8]}]  \
  [get_ports {Bus2IP_RdCE[9]}]  \
  [get_ports {Bus2IP_RdCE[10]}]  \
  [get_ports {Bus2IP_RdCE[11]}]  \
  [get_ports {Bus2IP_RdCE[12]}]  \
  [get_ports {Bus2IP_RdCE[13]}]  \
  [get_ports {Bus2IP_RdCE[14]}]  \
  [get_ports {Bus2IP_WrCE[0]}]  \
  [get_ports {Bus2IP_WrCE[1]}]  \
  [get_ports {Bus2IP_WrCE[2]}]  \
  [get_ports {Bus2IP_WrCE[3]}]  \
  [get_ports {Bus2IP_WrCE[4]}]  \
  [get_ports {Bus2IP_WrCE[5]}]  \
  [get_ports {Bus2IP_WrCE[6]}]  \
  [get_ports {Bus2IP_WrCE[7]}]  \
  [get_ports {Bus2IP_WrCE[8]}]  \
  [get_ports {Bus2IP_WrCE[9]}]  \
  [get_ports {Bus2IP_WrCE[10]}]  \
  [get_ports {Bus2IP_WrCE[11]}]  \
  [get_ports {Bus2IP_WrCE[12]}]  \
  [get_ports {Bus2IP_WrCE[13]}]  \
  [get_ports {Bus2IP_WrCE[14]}] ] -to [list \
  [get_ports {IP2Bus_Data[7]}]  \
  [get_ports {IP2Bus_Data[6]}]  \
  [get_ports {IP2Bus_Data[5]}]  \
  [get_ports {IP2Bus_Data[4]}]  \
  [get_ports {IP2Bus_Data[3]}]  \
  [get_ports {IP2Bus_Data[2]}]  \
  [get_ports {IP2Bus_Data[1]}]  \
  [get_ports {IP2Bus_Data[0]}]  \
  [get_ports user_int] ]
group_path -name cg_enable_group_Bus2IP_Clk -through [list \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST9/enable]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST9/enable]  \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST10/enable]  \
  [get_pins RC_CG_HIER_INST11/enable]  \
  [get_pins RC_CG_HIER_INST12/enable]  \
  [get_pins RC_CG_HIER_INST13/enable]  \
  [get_pins RC_CG_HIER_INST14/enable]  \
  [get_pins RC_CG_HIER_INST15/enable]  \
  [get_pins RC_CG_HIER_INST16/enable]  \
  [get_pins RC_CG_HIER_INST2/enable]  \
  [get_pins RC_CG_HIER_INST3/enable]  \
  [get_pins RC_CG_HIER_INST4/enable]  \
  [get_pins RC_CG_HIER_INST5/enable]  \
  [get_pins RC_CG_HIER_INST6/enable]  \
  [get_pins RC_CG_HIER_INST7/enable]  \
  [get_pins RC_CG_HIER_INST8/enable]  \
  [get_pins RC_CG_HIER_INST9/enable] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks Bus2IP_Clk] -network_latency_included -add_delay -rise -min 0.0 [get_ports Bus2IP_Clk]
set_input_delay -clock [get_clocks Bus2IP_Clk] -clock_fall -network_latency_included -add_delay -fall -min 0.0 [get_ports Bus2IP_Clk]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports Bus2IP_Clk]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports Bus2IP_Reset]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[7]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[6]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[5]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[4]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[3]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[2]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[1]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_Data[0]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[0]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[1]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[2]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[3]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[4]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[5]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[6]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[7]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[8]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[9]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[10]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[11]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[12]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[13]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_RdCE[14]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[0]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[1]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[2]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[3]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[4]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[5]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[6]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[7]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[8]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[9]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[10]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[11]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[12]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[13]}]
set_input_delay -clock [get_clocks Bus2IP_Clk] -add_delay -max 0.2 [get_ports {Bus2IP_WrCE[14]}]
set_input_transition -min 0.003 [get_ports Bus2IP_Clk]
set_input_transition -max 0.16 [get_ports Bus2IP_Clk]
set_input_transition -min 0.003 [get_ports Bus2IP_Reset]
set_input_transition -max 0.16 [get_ports Bus2IP_Reset]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[7]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[7]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[6]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[6]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[5]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[5]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[4]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[4]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[3]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[3]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[2]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[2]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[1]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[1]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_Data[0]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_Data[0]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[0]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[0]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[1]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[1]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[2]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[2]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[3]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[3]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[4]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[4]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[5]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[5]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[6]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[6]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[7]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[7]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[8]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[8]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[9]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[9]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[10]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[10]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[11]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[11]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[12]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[12]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[13]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[13]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_RdCE[14]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_RdCE[14]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[0]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[0]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[1]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[1]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[2]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[2]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[3]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[3]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[4]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[4]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[5]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[5]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[6]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[6]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[7]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[7]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[8]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[8]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[9]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[9]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[10]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[10]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[11]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[11]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[12]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[12]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[13]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[13]}]
set_input_transition -min 0.003 [get_ports {Bus2IP_WrCE[14]}]
set_input_transition -max 0.16 [get_ports {Bus2IP_WrCE[14]}]
set_wire_load_selection_group "4_metls_routing" -library "D_CELLS_MOSST_typ_1_80V_25C"
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN322X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN322X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN331X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN331X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN332X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN332X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN333X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AN333X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AND7X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AND7X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AND8X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AND8X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELL10]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELL2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELL25]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELL5]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELLN10]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELLN2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELLN25]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ANTENNACELLN5]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO322X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO322X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO331X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO331X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO332X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO332X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO333X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/AO333X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCNX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LGCPX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCNX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSGCPX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCNX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX3]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX4]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX6]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/LSOGCPX8]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NA7X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NA7X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NA8X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NA8X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NO7X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NO7X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NO8X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/NO8X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA322X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA322X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA331X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA331X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA332X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA332X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA333X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OA333X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON322X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON322X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON331X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON331X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON332X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON332X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON333X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/ON333X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OR7X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OR7X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OR8X0]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/OR8X1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/SIGNALHOLD]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEED1]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEED2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEED5]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEED10]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEED25]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP2]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP5]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP5LP]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP7]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP7LP]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP10]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP10LP]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP15]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP15LP]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP25]
set_dont_use [get_lib_cells D_CELLS_MOSST_typ_1_80V_25C/FEEDCAP25LP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR00DP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR00P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR01DP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR01P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR04DP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR04P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR10DP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR10P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR15DP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/APR15P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBC8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCA8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCHD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBCUD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBL8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLHD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBLUD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBS8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSHD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBSUD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBT8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTHD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BBTUD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOC8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCA8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOCGD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOL8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOLGD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOS8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOSGD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOT8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BOTGD8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT16P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT16SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT16SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT1P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT24P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT24SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT24SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT2P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT2SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT4P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT4SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT4SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT8P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT8SMP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/BT8SP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/GNDIPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/GNDOPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/GNDORPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/GNDRPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER01P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER02P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER05P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER10P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER20P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER40P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER50P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/FILLER60P]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ICAP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ICHDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ICP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ICUDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ILHDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ILP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ILUDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ISHDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ISP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ISUDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ITHDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ITP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/ITUDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JCAP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JCGDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JCP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JLGDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JLP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JSGDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JSP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JTGDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/JTP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/POWERCUTP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDCPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDIPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDOPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDORPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/VDDRPADP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/CORNERBP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/CORNERESDP]
set_dont_use [get_lib_cells IO_CELLS_5V_MOS5ST_typ_1_80V_4_50V_25C/CORNERP]
