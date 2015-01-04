  	  		
 module dut(
		);

wire clk;
clkgen #(1000) clkgen0 (clk);  

reg	    reset;
wire kuku;
assign kuku = reset;
reg 	 start;
reg[5:0] adder_counter;      
wire 	done;

always @(posedge clk or posedge reset)
	if(reset) 
		adder_counter <= {6{1'b0}};
	 else if(start && !done)adder_counter <= adder_counter + 1;


assign done = (adder_counter == 6'h3f) ? 1'b1 : 1'b0;

//always @(negedge reset )begin//ixc tbcall_region
axis_tbcall(kuku,"my_run");
task my_run;
begin	 
	 $display("Load Stub mem");


//           $xc_cmd("memory -load %readmemh top.dut.test_mem0.mem -file DataIn.txt ");
           $xc_cmd("memory -load %readmemh dut.test_mem0.mem -file DataIn.txt ");
//$axis_readmemh("DataIn.txt",test_mem0.mem);
                              end	   
endtask
wire cs,rw_;
wire [31:0]data_move;	
assign cs = (start && !done) ? 1'b1 : 1'b0;
test_mem test_mem0(
       .clk(clk), 
       .reset(reset),
       
	.cs(cs), .rw_(1'b1),
	.adder(adder_counter),
	.datain({32{1'b0}}),
	.dataout(data_move)
);
	
reg [31:0] addResolt;
always @(posedge clk)
	if(reset)addResolt <= {32{1'b0}};
	 else if (start &&!done) addResolt <= addResolt + {5{data_move[5:0]}};
		
test_mem test_mem1(
       .clk(clk), 
       .reset(reset),
       
	.cs(cs), .rw_(1'b0),
	.adder(adder_counter),
	.datain({data_move[15:0],data_move[15:0]}),
	.dataout()
);

endmodule 
