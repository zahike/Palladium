module test_mem(
       clk, 
       reset,
       
	cs, rw_,
	adder,
	datain,
	dataout
);

input         clk;
input         reset;
input		cs;
input   	rw_;
input[5:0]	adder;
input[31:0]	datain;
output[31:0]	dataout;

reg [31:0] mem [0:63];

always @(posedge clk)
	if(cs && !rw_ && !reset) mem[adder] <= datain;

assign dataout = (cs && rw_ && !reset) ? mem[adder] :  {32{1'bz}};



       


endmodule 
