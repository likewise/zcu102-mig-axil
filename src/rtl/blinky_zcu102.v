module blinky_zcu102
  (input wire CPU_RESET,
   input wire  CLK_125_P,
   input wire  CLK_125_N,
   input wire USER_SI570_P,
   input wire USER_SI570_N,
   output wire GPIO_LED_0,
   
   output wire DDR4_A16_RAS_B,
   output wire DDR4_A15_CAS_B,
   output wire DDR4_A14_WE_B,
   output wire [13:0] DDR4_A,
   output wire DDR4_ACT_B,
   output wire DDR4_BA1,
   output wire DDR4_BA0,
   output wire DDR4_BG0,
   output wire DDR4_CKE,
   output wire DDR4_ODT,
   output wire DDR4_CS_B,
   output wire DDR4_CK_C,
   output wire DDR4_CK_T,
   output wire DDR4_RESET_B_LS,
   inout  wire DDR4_DM1,
   inout  wire DDR4_DM0,
   inout  wire [15:0] DDR4_DQ,
   inout  wire DDR4_DQS1_C,
   inout  wire DDR4_DQS0_C,
   inout  wire DDR4_DQS1_T,
   inout  wire DDR4_DQS0_T

//   output                c0_init_calib_complete
   

   );

   wire        clk;

   IBUFDS ibufds
     (.I  (CLK_125_P),
      .IB (CLK_125_N),
      .O  (clk_125));

   /* ARM Processing System (PS) design */
   design_1_wrapper ps_inst (
     .sys_rst (CPU_RESET),
     .user_si570_sysclk_clk_p(USER_SI570_P),
     .user_si570_sysclk_clk_n(USER_SI570_N),
     .c0_ddr4_ck_c       (DDR4_CK_C),
     .c0_ddr4_ck_t       (DDR4_CK_T),
     .c0_ddr4_adr        ({DDR4_A16_RAS_B, DDR4_A15_CAS_B, DDR4_A14_WE_B, DDR4_A[13:0]}),
     .c0_ddr4_ba         ({DDR4_BA1, DDR4_BA0}),
     .c0_ddr4_bg         (DDR4_BG0),
     .c0_ddr4_cs_n       (DDR4_CS_B),//negated?
     .c0_ddr4_cke        (DDR4_CKE),
     .c0_ddr4_odt        (DDR4_ODT),
     .c0_ddr4_act_n      (DDR4_ACT_B), //negated?
     .c0_ddr4_reset_n    (DDR4_RESET_B_LS), //verify
     .c0_ddr4_dqs_c      ({DDR4_DQS1_C, DDR4_DQS0_C}),
     .c0_ddr4_dqs_t      ({DDR4_DQS1_T, DDR4_DQS0_T}),
     .c0_ddr4_dm_n       ({DDR4_DM1,DDR4_DM0}),
     .c0_ddr4_dq         (DDR4_DQ)
   );

   /* Programmable Logic (PL) design */
   blinky #(.clk_freq_hz (125_000_000)) blinky
     (.clk (clk_125),
      .q   (GPIO_LED_0));

endmodule

