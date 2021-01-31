## Clock signal
#set_property -dict { PACKAGE_PIN G21 IOSTANDARD LVDS_25 } [get_ports clk_p];
#set_property -dict { PACKAGE_PIN F21 IOSTANDARD LVDS_25 } [get_ports clk_n];
create_clock -add -name sys_clk_pin -period 8 [get_nets clk_125];

## On board silk screen 'PL LEDs' 'LED0' 'DS38'
#set_property -dict { PACKAGE_PIN AG14 IOSTANDARD LVCMOS33 } [get_ports q];

set_property PACKAGE_PIN AG14     [get_ports "GPIO_LED_0"] ;# Bank  44 VCCO - VCC3V3   - IO_L10P_AD2P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "GPIO_LED_0"] ;# Bank  44 VCCO - VCC3V3   - IO_L10P_AD2P_44


# ZCU102 SW20 "CPU RESET" button, active high switch
set_property PACKAGE_PIN AM13     [get_ports "CPU_RESET"] ;# Bank  44 VCCO - VCC3V3   - IO_L4N_AD8N_44
set_property IOSTANDARD  LVCMOS33 [get_ports "CPU_RESET"] ;# Bank  44 VCCO - VCC3V3   - IO_L4N_AD8N_44

set_property PACKAGE_PIN F21      [get_ports "CLK_125_N"] ;# Bank  47 VCCO - VCC3V3   - IO_L5N_HDGC_AD7N_47
set_property IOSTANDARD  LVDS_25  [get_ports "CLK_125_N"] ;# Bank  47 VCCO - VCC3V3   - IO_L5N_HDGC_AD7N_47
set_property PACKAGE_PIN G21      [get_ports "CLK_125_P"] ;# Bank  47 VCCO - VCC3V3   - IO_L5P_HDGC_AD7P_47
set_property IOSTANDARD  LVDS_25  [get_ports "CLK_125_P"] ;# Bank  47 VCCO - VCC3V3   - IO_L5P_HDGC_AD7P_47

set_property PACKAGE_PIN AL7      [get_ports "USER_SI570_N"] ;# Bank  64 VCCO - VCC1V2   - IO_L12N_T1U_N11_GC_64
set_property IOSTANDARD  DIFF_SSTL12 [get_ports "USER_SI570_N"] ;# Bank  64 VCCO - VCC1V2   - IO_L12N_T1U_N11_GC_64
set_property PACKAGE_PIN AL8      [get_ports "USER_SI570_P"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64
set_property IOSTANDARD  DIFF_SSTL12 [get_ports "USER_SI570_P"] ;# Bank  64 VCCO - VCC1V2   - IO_L12P_T1U_N10_GC_64

# Using sed replace, make some pins part of an array
# ,get_ports "DDR4_A([0-9]*)",get_ports {DDR4_A[$1]},
# ,get_ports "DDR4_DQ([0-9]*)",get_ports {DDR4_DQ[$1]},

# DDR_A4 seems erroneously commented out in the Xilinx ZCU102 XDC file (I think the VRP pin was to be commented out)

set_property PACKAGE_PIN AK2      [get_ports {DDR4_DQ[8]}] ;# Bank  64 VCCO - VCC1V2   - IO_L24N_T3U_N11_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[8]}] ;# Bank  64 VCCO - VCC1V2   - IO_L24N_T3U_N11_64
set_property PACKAGE_PIN AK3      [get_ports {DDR4_DQ[9]}] ;# Bank  64 VCCO - VCC1V2   - IO_L24P_T3U_N10_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[9]}] ;# Bank  64 VCCO - VCC1V2   - IO_L24P_T3U_N10_64
set_property PACKAGE_PIN AL1      [get_ports {DDR4_DQ[10]}] ;# Bank  64 VCCO - VCC1V2   - IO_L23N_T3U_N9_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[10]}] ;# Bank  64 VCCO - VCC1V2   - IO_L23N_T3U_N9_64
set_property PACKAGE_PIN AK1      [get_ports {DDR4_DQ[11]}] ;# Bank  64 VCCO - VCC1V2   - IO_L23P_T3U_N8_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[11]}] ;# Bank  64 VCCO - VCC1V2   - IO_L23P_T3U_N8_64
# https://forums.xilinx.com/t5/Xilinx-Evaluation-Boards/zcu102-pin-IO-standard-problem/td-p/905419
set_property PACKAGE_PIN AL2      [get_ports "DDR4_DQS1_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L22N_T3U_N7_DBC_AD0N_64
set_property IOSTANDARD  DIFF_POD12_DCI [get_ports "DDR4_DQS1_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L22N_T3U_N7_DBC_AD0N_64
set_property PACKAGE_PIN AL3      [get_ports "DDR4_DQS1_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L22P_T3U_N6_DBC_AD0P_64
set_property IOSTANDARD  DIFF_POD12_DCI [get_ports "DDR4_DQS1_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L22P_T3U_N6_DBC_AD0P_64
set_property PACKAGE_PIN AN1      [get_ports {DDR4_DQ[12]}] ;# Bank  64 VCCO - VCC1V2   - IO_L21N_T3L_N5_AD8N_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[12]}] ;# Bank  64 VCCO - VCC1V2   - IO_L21N_T3L_N5_AD8N_64
set_property PACKAGE_PIN AM1      [get_ports {DDR4_DQ[13]}] ;# Bank  64 VCCO - VCC1V2   - IO_L21P_T3L_N4_AD8P_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[13]}] ;# Bank  64 VCCO - VCC1V2   - IO_L21P_T3L_N4_AD8P_64
set_property PACKAGE_PIN AP3      [get_ports {DDR4_DQ[14]}] ;# Bank  64 VCCO - VCC1V2   - IO_L20N_T3L_N3_AD1N_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[14]}] ;# Bank  64 VCCO - VCC1V2   - IO_L20N_T3L_N3_AD1N_64
set_property PACKAGE_PIN AN3      [get_ports {DDR4_DQ[15]}] ;# Bank  64 VCCO - VCC1V2   - IO_L20P_T3L_N2_AD1P_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[15]}] ;# Bank  64 VCCO - VCC1V2   - IO_L20P_T3L_N2_AD1P_64
set_property PACKAGE_PIN AP2      [get_ports "DDR4_CS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L19N_T3L_N1_DBC_AD9N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_CS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L19N_T3L_N1_DBC_AD9N_64
set_property PACKAGE_PIN AN2      [get_ports "DDR4_DM1"] ;# Bank  64 VCCO - VCC1V2   - IO_L19P_T3L_N0_DBC_AD9P_64
set_property IOSTANDARD  POD12_DCI [get_ports "DDR4_DM1"] ;# Bank  64 VCCO - VCC1V2   - IO_L19P_T3L_N0_DBC_AD9P_64
#set_property PACKAGE_PIN AP1      [get_ports "DDR4_PAR"] ;# Bank  64 VCCO - VCC1V2   - IO_T3U_N12_64
#set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_PAR"] ;# Bank  64 VCCO - VCC1V2   - IO_T3U_N12_64
set_property PACKAGE_PIN AM3      [get_ports "DDR4_CKE"] ;# Bank  64 VCCO - VCC1V2   - IO_T2U_N12_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_CKE"] ;# Bank  64 VCCO - VCC1V2   - IO_T2U_N12_64
set_property PACKAGE_PIN AK4      [get_ports {DDR4_DQ[0]}] ;# Bank  64 VCCO - VCC1V2   - IO_L18N_T2U_N11_AD2N_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[0]}] ;# Bank  64 VCCO - VCC1V2   - IO_L18N_T2U_N11_AD2N_64
set_property PACKAGE_PIN AK5      [get_ports {DDR4_DQ[1]}] ;# Bank  64 VCCO - VCC1V2   - IO_L18P_T2U_N10_AD2P_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[1]}] ;# Bank  64 VCCO - VCC1V2   - IO_L18P_T2U_N10_AD2P_64
set_property PACKAGE_PIN AN4      [get_ports {DDR4_DQ[2]}] ;# Bank  64 VCCO - VCC1V2   - IO_L17N_T2U_N9_AD10N_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[2]}] ;# Bank  64 VCCO - VCC1V2   - IO_L17N_T2U_N9_AD10N_64
set_property PACKAGE_PIN AM4      [get_ports {DDR4_DQ[3]}] ;# Bank  64 VCCO - VCC1V2   - IO_L17P_T2U_N8_AD10P_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[3]}] ;# Bank  64 VCCO - VCC1V2   - IO_L17P_T2U_N8_AD10P_64
# https://forums.xilinx.com/t5/Xilinx-Evaluation-Boards/zcu102-pin-IO-standard-problem/td-p/905419
set_property PACKAGE_PIN AP6      [get_ports "DDR4_DQS0_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L16N_T2U_N7_QBC_AD3N_64
set_property IOSTANDARD  DIFF_POD12_DCI [get_ports "DDR4_DQS0_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L16N_T2U_N7_QBC_AD3N_64
set_property PACKAGE_PIN AN6      [get_ports "DDR4_DQS0_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L16P_T2U_N6_QBC_AD3P_64
set_property IOSTANDARD  DIFF_POD12_DCI [get_ports "DDR4_DQS0_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L16P_T2U_N6_QBC_AD3P_64
set_property PACKAGE_PIN AP4      [get_ports {DDR4_DQ[4]}] ;# Bank  64 VCCO - VCC1V2   - IO_L15N_T2L_N5_AD11N_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[4]}] ;# Bank  64 VCCO - VCC1V2   - IO_L15N_T2L_N5_AD11N_64
set_property PACKAGE_PIN AP5      [get_ports {DDR4_DQ[5]}] ;# Bank  64 VCCO - VCC1V2   - IO_L15P_T2L_N4_AD11P_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[5]}] ;# Bank  64 VCCO - VCC1V2   - IO_L15P_T2L_N4_AD11P_64
set_property PACKAGE_PIN AM5      [get_ports {DDR4_DQ[6]}] ;# Bank  64 VCCO - VCC1V2   - IO_L14N_T2L_N3_GC_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[6]}] ;# Bank  64 VCCO - VCC1V2   - IO_L14N_T2L_N3_GC_64
set_property PACKAGE_PIN AM6      [get_ports {DDR4_DQ[7]}] ;# Bank  64 VCCO - VCC1V2   - IO_L14P_T2L_N2_GC_64
set_property IOSTANDARD  POD12_DCI [get_ports {DDR4_DQ[7]}] ;# Bank  64 VCCO - VCC1V2   - IO_L14P_T2L_N2_GC_64
set_property PACKAGE_PIN AL5      [get_ports "DDR4_A15_CAS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L13N_T2L_N1_GC_QBC_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_A15_CAS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L13N_T2L_N1_GC_QBC_64
set_property PACKAGE_PIN AL6      [get_ports "DDR4_DM0"] ;# Bank  64 VCCO - VCC1V2   - IO_L13P_T2L_N0_GC_QBC_64
set_property IOSTANDARD  POD12_DCI [get_ports "DDR4_DM0"] ;# Bank  64 VCCO - VCC1V2   - IO_L13P_T2L_N0_GC_QBC_64
set_property PACKAGE_PIN AK7      [get_ports "DDR4_BG0"] ;# Bank  64 VCCO - VCC1V2   - IO_L11N_T1U_N9_GC_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_BG0"] ;# Bank  64 VCCO - VCC1V2   - IO_L11N_T1U_N9_GC_64
set_property PACKAGE_PIN AK8      [get_ports "DDR4_ACT_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L11P_T1U_N8_GC_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_ACT_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L11P_T1U_N8_GC_64
# https://forums.xilinx.com/t5/Xilinx-Evaluation-Boards/zcu102-pin-IO-standard-problem/td-p/905419
set_property PACKAGE_PIN AP7      [get_ports "DDR4_CK_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L10N_T1U_N7_QBC_AD4N_64
set_property IOSTANDARD  DIFF_SSTL12_DCI [get_ports "DDR4_CK_C"] ;# Bank  64 VCCO - VCC1V2   - IO_L10N_T1U_N7_QBC_AD4N_64
set_property PACKAGE_PIN AN7      [get_ports "DDR4_CK_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L10P_T1U_N6_QBC_AD4P_64
set_property IOSTANDARD  DIFF_SSTL12_DCI [get_ports "DDR4_CK_T"] ;# Bank  64 VCCO - VCC1V2   - IO_L10P_T1U_N6_QBC_AD4P_64
set_property PACKAGE_PIN AK9      [get_ports "DDR4_ODT"] ;# Bank  64 VCCO - VCC1V2   - IO_L9N_T1L_N5_AD12N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_ODT"] ;# Bank  64 VCCO - VCC1V2   - IO_L9N_T1L_N5_AD12N_64
set_property PACKAGE_PIN AJ9      [get_ports "DDR4_A16_RAS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L9P_T1L_N4_AD12P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_A16_RAS_B"] ;# Bank  64 VCCO - VCC1V2   - IO_L9P_T1L_N4_AD12P_64
set_property PACKAGE_PIN AM8      [get_ports {DDR4_A[0]}] ;# Bank  64 VCCO - VCC1V2   - IO_L8N_T1L_N3_AD5N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[0]}] ;# Bank  64 VCCO - VCC1V2   - IO_L8N_T1L_N3_AD5N_64
set_property PACKAGE_PIN AM9      [get_ports {DDR4_A[1]}] ;# Bank  64 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[1]}] ;# Bank  64 VCCO - VCC1V2   - IO_L8P_T1L_N2_AD5P_64
set_property PACKAGE_PIN AP8      [get_ports {DDR4_A[2]}] ;# Bank  64 VCCO - VCC1V2   - IO_L7N_T1L_N1_QBC_AD13N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[2]}] ;# Bank  64 VCCO - VCC1V2   - IO_L7N_T1L_N1_QBC_AD13N_64
set_property PACKAGE_PIN AN8      [get_ports {DDR4_A[3]}] ;# Bank  64 VCCO - VCC1V2   - IO_L7P_T1L_N0_QBC_AD13P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[3]}] ;# Bank  64 VCCO - VCC1V2   - IO_L7P_T1L_N0_QBC_AD13P_64
set_property PACKAGE_PIN AJ7      [get_ports "DDR4_A14_WE_B"] ;# Bank  64 VCCO - VCC1V2   - IO_T1U_N12_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_A14_WE_B"] ;# Bank  64 VCCO - VCC1V2   - IO_T1U_N12_64
set_property PACKAGE_PIN AK10     [get_ports {DDR4_A[4]}] ;# Bank  64 VCCO - VCC1V2   - IO_L6N_T0U_N11_AD6N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[4]}] ;# Bank  64 VCCO - VCC1V2   - IO_L6N_T0U_N11_AD6N_64
set_property PACKAGE_PIN AJ10     [get_ports {DDR4_A[5]}] ;# Bank  64 VCCO - VCC1V2   - IO_L6P_T0U_N10_AD6P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[5]}] ;# Bank  64 VCCO - VCC1V2   - IO_L6P_T0U_N10_AD6P_64
set_property PACKAGE_PIN AP9      [get_ports {DDR4_A[6]}] ;# Bank  64 VCCO - VCC1V2   - IO_L5N_T0U_N9_AD14N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[6]}] ;# Bank  64 VCCO - VCC1V2   - IO_L5N_T0U_N9_AD14N_64
set_property PACKAGE_PIN AN9      [get_ports {DDR4_A[7]}] ;# Bank  64 VCCO - VCC1V2   - IO_L5P_T0U_N8_AD14P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[7]}] ;# Bank  64 VCCO - VCC1V2   - IO_L5P_T0U_N8_AD14P_64
set_property PACKAGE_PIN AP10     [get_ports {DDR4_A[8]}] ;# Bank  64 VCCO - VCC1V2   - IO_L4N_T0U_N7_DBC_AD7N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[8]}] ;# Bank  64 VCCO - VCC1V2   - IO_L4N_T0U_N7_DBC_AD7N_64
set_property PACKAGE_PIN AP11     [get_ports {DDR4_A[9]}] ;# Bank  64 VCCO - VCC1V2   - IO_L4P_T0U_N6_DBC_AD7P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[9]}] ;# Bank  64 VCCO - VCC1V2   - IO_L4P_T0U_N6_DBC_AD7P_64
set_property PACKAGE_PIN AM10     [get_ports {DDR4_A[10]}] ;# Bank  64 VCCO - VCC1V2   - IO_L3N_T0L_N5_AD15N_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[10]}] ;# Bank  64 VCCO - VCC1V2   - IO_L3N_T0L_N5_AD15N_64
set_property PACKAGE_PIN AL10     [get_ports {DDR4_A[11]}] ;# Bank  64 VCCO - VCC1V2   - IO_L3P_T0L_N4_AD15P_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[11]}] ;# Bank  64 VCCO - VCC1V2   - IO_L3P_T0L_N4_AD15P_64
set_property PACKAGE_PIN AM11     [get_ports {DDR4_A[12]}] ;# Bank  64 VCCO - VCC1V2   - IO_L2N_T0L_N3_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[12]}] ;# Bank  64 VCCO - VCC1V2   - IO_L2N_T0L_N3_64
set_property PACKAGE_PIN AL11     [get_ports {DDR4_A[13]}] ;# Bank  64 VCCO - VCC1V2   - IO_L2P_T0L_N2_64
set_property IOSTANDARD  SSTL12_DCI [get_ports {DDR4_A[13]}] ;# Bank  64 VCCO - VCC1V2   - IO_L2P_T0L_N2_64
set_property PACKAGE_PIN AK12     [get_ports "DDR4_BA0"] ;# Bank  64 VCCO - VCC1V2   - IO_L1N_T0L_N1_DBC_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_BA0"] ;# Bank  64 VCCO - VCC1V2   - IO_L1N_T0L_N1_DBC_64
set_property PACKAGE_PIN AJ12     [get_ports "DDR4_BA1"] ;# Bank  64 VCCO - VCC1V2   - IO_L1P_T0L_N0_DBC_64
set_property IOSTANDARD  SSTL12_DCI [get_ports "DDR4_BA1"] ;# Bank  64 VCCO - VCC1V2   - IO_L1P_T0L_N0_DBC_64