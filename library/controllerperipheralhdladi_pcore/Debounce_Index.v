// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\Debounce_Index.v
// Created: 2014-09-08 14:12:09
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Debounce_Index
// Source Path: controllerPeripheralHdlAdi/Encoder_Peripheral_Hardware_Specification/Debounce_Index
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Debounce_Index
          (
           CLK_IN,
           reset,
           enb,
           In,
           Out
          );


  input   CLK_IN;
  input   reset;
  input   enb;
  input   In;
  output  Out;


  wire [7:0] Debouce_Count_out1;  // uint8
  wire Count_Up_Down_out1;


  // <S5>/Debouce_Count
  assign Debouce_Count_out1 = 8'd25;



  // <S5>/Count_Up_Down
  Count_Up_Down   u_Count_Up_Down   (.CLK_IN(CLK_IN),
                                     .reset(reset),
                                     .enb(enb),
                                     .u(In),
                                     .count_debounce(Debouce_Count_out1),  // uint8
                                     .y(Count_Up_Down_out1)
                                     );

  assign Out = Count_Up_Down_out1;

endmodule  // Debounce_Index

