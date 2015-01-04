`timescale 1ns / 100ps
module top();

/*
always @(negedge dut.reset )begin
	 $display("Load Stub mem");
           $xc_cmd("memory -load %readmemh top.dut.test_mem0.mem -file DataIn.txt ");
                               end	   
*/			       
always @(posedge dut.done )begin
	 $display("Load Stub mem");
//	   $xc_cmd("memory -dump %readmemh top.dut.test_mem1.mem -file DataOut.txt ");  
	   $xc_cmd("memory -dump %readmemh dut.test_mem1.mem -file DataOut.txt ");  
                                end	   

//dut dut(
//);


  	  		
endmodule 
