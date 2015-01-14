//MTL-HEADER///////////////////////////////////////////////////////////////////
// This Program is the Confidential and Proprietary product of
// Mellanox Technologies LTD. Any unauthorized use, reproduction
// or transfer of this program is strictly prohibited.
// Copyright 1999 by Mellanox Technologies LTD All Rights Reserved.
///////////////////////////////////////////////////////////////////////////////
// Id ..........$Id: top.rbv,v 1.2 2014/09/07 16:27:18 nirdr Exp $
// Revision.....$Revision: 1.2 $
// Locker.......$Locker: $
// Date.........$Date: 2014/09/07 16:27:18 $
// Author.......$Author: nirdr $
//EOH//////////////////////////////////////////////////////////////////////////

// This file was created on 09/07/14, at 19:24:46.
// Using revision (1.26) of the script: /home/nirdr/CONDB/condb_scripts/FinalScripts/CreateTB.tcl
// The full command line: /home/nirdr/CONDB/condb_scripts/FinalScripts/CreateTB.tcl -p condor -ul condor -condbdir /home/nirdr/CONDB/FcCondor/CondorCondbFiles_050814/ -verilogdir /home/nirdr/CONDB/FcCondor/Condor_050814/LatestVerilog -keeplog -keepdebugfiles -fc -includemanual
// The condb configuration file, condor_ConfigParamsForTb.txt, included the following lines:
// all_unit_inst:dcp lnd plu ptb pxdp kvi kvc kvh dqa dql dqs ptc tub tul glc dqc sma pxt mcc mcs lbs lbv lbc ir yu ioyu


`timescale 1ns / 100ps

module top();

reg rst_;

/*
initial begin 
rst_ = 1'b0;
#10;
rst_ = 1'b0;
#150;
rst_ = 1'b1;
end 
*/
reg PguArrayLoad;
reg loadarrays;
always @(posedge dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.start or negedge dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.done)
  $xc_cmd("memory -load %readmemh top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.config_array -file NewConfigMem.txt");
always@(posedge PguArrayLoad)
  $xc_cmd("memory -load %readmemh top.dut.lndremote.pgu.pgu_tx_port_p0.pgu_tx_s0.pgu_tx_pkt_handler.pkt_array -file Port0.txt");

always @(posedge loadarrays) 
  begin
  `include "memorys_load_file.hv"
end 


external_bfms dut(
//    .rst_(rst_)
);


endmodule

