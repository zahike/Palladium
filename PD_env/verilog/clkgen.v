/*
 * File :
 *  clkgen.v
 *
 * Cadence Design Systems
 *
 * (C) COPYRIGHT, Cadence Design Systems, Inc. 2010
 * All Rights Reserved
 * Licensed Materials - Property of Cadence Design Systems
 *
 * No part of this file may be reproduced, stored in a retrieval system,
 * or transmitted in any form or by any means --- electronic, mechanical,
 * photocopying, recording, or otherwise --- without prior written
 * permission of Cadence Design Systems, Inc.
 *
 * WARRANTY:
 * Use all material in this file at your own risk.  Cadence Design
 * Systems makes no claims about any material contained in this file.
 *
 * This source file is provided to customers so that they can change it
 * to enhance the Cadence User Interface to better fit their needs.
 *
 *
 * Description :
 * Generates clock for the DUT and SCEMI BFMs
 */
`timescale 1 ps / 1 ps
`define IXCclkgenTs 1 ps / 1 ps

module clkgen (clk);
parameter cycle = 5;
output reg clk;
`ifdef AXIS
  IXCclkgen #(cycle) osc (clk); // 1X mode capable clkgen
`else
 initial clk = 1'b0;
   always #cycle clk = ~clk;
`endif
endmodule

`timescale 1 ns / 100 ps
