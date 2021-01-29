module blinky_zcu102
  (input wire  clk_p,
   input wire  clk_n,
   output wire q);

   wire        clk;

   IBUFDS ibufds
     (.I  (clk_p),
      .IB (clk_n),
      .O  (clk));

   /* ARM Processing System (PS) design */
   processing_system_wrapper ps_inst ();

   /* Programmable Logic (PL) design */
   blinky #(.clk_freq_hz (125_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule

