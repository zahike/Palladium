`timescale 1ns / 100ps
module external_bfms(
                     i2c_data,i2c_clk
//		gpio,
//              tdo, 
//	      VDDCPA, VDDIO, VQPS, VSSCPA, 
//	      cclk, funcmode, 
//	      lb_slow_clock_en, 
//	      rst_
//	      tck, tdi, tms, trst_, 
//	      VDDTD, VDDTD_LBS, VDDTD_LBV, prbg0, prbg1, prbp0, prbp1
	      );
inout i2c_data;
inout i2c_clk;
//inout [49:0] gpio;
//inout tdo;
//inout VDDCPA;
//inout VDDIO;
//inout VQPS;
//inout VSSCPA;
//input cclk; 
//output cclk;
//input funcmode;
//input lb_slow_clock_en;
//input rst_;
//input tck;
//input tdi;
//input tms;
//input trst_;
//input VDDTD;
//input VDDTD_LBS;
//input VDDTD_LBV;
//output prbg0;
//output prbg1;
//output prbp0;
//output prbp1;

wire [49:0] gpio;
assign gpio[4:0] = 5'h16;	//inout[49:0]
wire resdft0;	//inout
wire resdft1;	//inout
wire resdft_left0;	//inout
wire resdft_left1;	//inout
wire resdft_left;	//inout
wire resdft;	//inout
wire resdft_right0;	//inout
wire resdft_right1;	//inout
wire resdft_right;	//inout
//wire tdo;	//inout
supply1 VDDA0;	//inout
supply1 VDDA1;	//inout
supply1 VDDAPX;	//inout
supply1 VDDCPA;	//inout
supply1 VDDHS0;	//inout
supply1 VDDHS1;	//inout
supply1 VDDHSPX;	//inout
supply1 VDDIO;	//inout
supply1 VDDO_000;	//inout
supply1 VDDO_001;	//inout
supply1 VDDO_010;	//inout
supply1 VDDO_011;	//inout
supply1 VDDO_020;	//inout
supply1 VDDO_021;	//inout
supply1 VDDO_030;	//inout
supply1 VDDO_031;	//inout
supply1 VDDO_040;	//inout
supply1 VDDO_041;	//inout
supply1 VDDO_050;	//inout
supply1 VDDO_051;	//inout
supply1 VDDO_060;	//inout
supply1 VDDO_061;	//inout
supply1 VDDO_070;	//inout
supply1 VDDO_071;	//inout
supply1 VDDO_100;	//inout
supply1 VDDO_101;	//inout
supply1 VDDO_110;	//inout
supply1 VDDO_111;	//inout
supply1 VDDO_120;	//inout
supply1 VDDO_121;	//inout
supply1 VDDO_130;	//inout
supply1 VDDO_131;	//inout
supply1 VDDO_140;	//inout
supply1 VDDO_141;	//inout
supply1 VDDO_150;	//inout
supply1 VDDO_151;	//inout
supply1 VDDO_160;	//inout
supply1 VDDO_161;	//inout
supply1 VDDO_170;	//inout
supply1 VDDO_171;	//inout
supply1 VDDOPX;	//inout
supply1 VDDPLL0;	//inout
supply1 VDDPLL1;	//inout
supply1 VDDPLLPX;	//inout
supply1 VQPS;	//inout
supply0 VSSCPA;	//inout
supply0 VSSHS0;	//inout
supply0 VSSHS1;	//inout
supply0 VSSHSPX;	//inout
supply0 VSSPLL0;	//inout
supply0 VSSPLL1;	//inout
supply0 VSSPLLPX;	//inout
wire cclk;	//input
reg funcmode ;	//input
wire rck0pxn;	//input
wire rck0pxp;	//input
wire rck1pxn;	//input
wire rck1pxp;	//input
wire rckn00;	//input
wire rckn01;	//input
wire rckn10;	//input
wire rckn11;	//input
wire rckp00;	//input
wire rckp01;	//input
wire rckp10;	//input
wire rckp11;	//input
wire ri0000n;	//input
wire ri0000p;	//input
wire ri0001n;	//input
wire ri0001p;	//input
wire ri0002n;	//input
wire ri0002p;	//input
wire ri0003n;	//input
wire ri0003p;	//input
wire ri0010n;	//input
wire ri0010p;	//input
wire ri0011n;	//input
wire ri0011p;	//input
wire ri0012n;	//input
wire ri0012p;	//input
wire ri0013n;	//input
wire ri0013p;	//input
wire ri0100n;	//input
wire ri0100p;	//input
wire ri0101n;	//input
wire ri0101p;	//input
wire ri0102n;	//input
wire ri0102p;	//input
wire ri0103n;	//input
wire ri0103p;	//input
wire ri0110n;	//input
wire ri0110p;	//input
wire ri0111n;	//input
wire ri0111p;	//input
wire ri0112n;	//input
wire ri0112p;	//input
wire ri0113n;	//input
wire ri0113p;	//input
wire ri0200n;	//input
wire ri0200p;	//input
wire ri0201n;	//input
wire ri0201p;	//input
wire ri0202n;	//input
wire ri0202p;	//input
wire ri0203n;	//input
wire ri0203p;	//input
wire ri0210n;	//input
wire ri0210p;	//input
wire ri0211n;	//input
wire ri0211p;	//input
wire ri0212n;	//input
wire ri0212p;	//input
wire ri0213n;	//input
wire ri0213p;	//input
wire ri0300n;	//input
wire ri0300p;	//input
wire ri0301n;	//input
wire ri0301p;	//input
wire ri0302n;	//input
wire ri0302p;	//input
wire ri0303n;	//input
wire ri0303p;	//input
wire ri0310n;	//input
wire ri0310p;	//input
wire ri0311n;	//input
wire ri0311p;	//input
wire ri0312n;	//input
wire ri0312p;	//input
wire ri0313n;	//input
wire ri0313p;	//input
wire ri0400n;	//input
wire ri0400p;	//input
wire ri0401n;	//input
wire ri0401p;	//input
wire ri0402n;	//input
wire ri0402p;	//input
wire ri0403n;	//input
wire ri0403p;	//input
wire ri0410n;	//input
wire ri0410p;	//input
wire ri0411n;	//input
wire ri0411p;	//input
wire ri0412n;	//input
wire ri0412p;	//input
wire ri0413n;	//input
wire ri0413p;	//input
wire ri0500n;	//input
wire ri0500p;	//input
wire ri0501n;	//input
wire ri0501p;	//input
wire ri0502n;	//input
wire ri0502p;	//input
wire ri0503n;	//input
wire ri0503p;	//input
wire ri0510n;	//input
wire ri0510p;	//input
wire ri0511n;	//input
wire ri0511p;	//input
wire ri0512n;	//input
wire ri0512p;	//input
wire ri0513n;	//input
wire ri0513p;	//input
wire ri0600n;	//input
wire ri0600p;	//input
wire ri0601n;	//input
wire ri0601p;	//input
wire ri0602n;	//input
wire ri0602p;	//input
wire ri0603n;	//input
wire ri0603p;	//input
wire ri0610n;	//input
wire ri0610p;	//input
wire ri0611n;	//input
wire ri0611p;	//input
wire ri0612n;	//input
wire ri0612p;	//input
wire ri0613n;	//input
wire ri0613p;	//input
wire ri0700n;	//input
wire ri0700p;	//input
wire ri0701n;	//input
wire ri0701p;	//input
wire ri0702n;	//input
wire ri0702p;	//input
wire ri0703n;	//input
wire ri0703p;	//input
wire ri0710n;	//input
wire ri0710p;	//input
wire ri0711n;	//input
wire ri0711p;	//input
wire ri0712n;	//input
wire ri0712p;	//input
wire ri0713n;	//input
wire ri0713p;	//input
wire ri1000n;	//input
wire ri1000p;	//input
wire ri1001n;	//input
wire ri1001p;	//input
wire ri1002n;	//input
wire ri1002p;	//input
wire ri1003n;	//input
wire ri1003p;	//input
wire ri1010n;	//input
wire ri1010p;	//input
wire ri1011n;	//input
wire ri1011p;	//input
wire ri1012n;	//input
wire ri1012p;	//input
wire ri1013n;	//input
wire ri1013p;	//input
wire ri1100n;	//input
wire ri1100p;	//input
wire ri1101n;	//input
wire ri1101p;	//input
wire ri1102n;	//input
wire ri1102p;	//input
wire ri1103n;	//input
wire ri1103p;	//input
wire ri1110n;	//input
wire ri1110p;	//input
wire ri1111n;	//input
wire ri1111p;	//input
wire ri1112n;	//input
wire ri1112p;	//input
wire ri1113n;	//input
wire ri1113p;	//input
wire ri1200n;	//input
wire ri1200p;	//input
wire ri1201n;	//input
wire ri1201p;	//input
wire ri1202n;	//input
wire ri1202p;	//input
wire ri1203n;	//input
wire ri1203p;	//input
wire ri1210n;	//input
wire ri1210p;	//input
wire ri1211n;	//input
wire ri1211p;	//input
wire ri1212n;	//input
wire ri1212p;	//input
wire ri1213n;	//input
wire ri1213p;	//input
wire ri1300n;	//input
wire ri1300p;	//input
wire ri1301n;	//input
wire ri1301p;	//input
wire ri1302n;	//input
wire ri1302p;	//input
wire ri1303n;	//input
wire ri1303p;	//input
wire ri1310n;	//input
wire ri1310p;	//input
wire ri1311n;	//input
wire ri1311p;	//input
wire ri1312n;	//input
wire ri1312p;	//input
wire ri1313n;	//input
wire ri1313p;	//input
wire ri1400n;	//input
wire ri1400p;	//input
wire ri1401n;	//input
wire ri1401p;	//input
wire ri1402n;	//input
wire ri1402p;	//input
wire ri1403n;	//input
wire ri1403p;	//input
wire ri1410n;	//input
wire ri1410p;	//input
wire ri1411n;	//input
wire ri1411p;	//input
wire ri1412n;	//input
wire ri1412p;	//input
wire ri1413n;	//input
wire ri1413p;	//input
wire ri1500n;	//input
wire ri1500p;	//input
wire ri1501n;	//input
wire ri1501p;	//input
wire ri1502n;	//input
wire ri1502p;	//input
wire ri1503n;	//input
wire ri1503p;	//input
wire ri1510n;	//input
wire ri1510p;	//input
wire ri1511n;	//input
wire ri1511p;	//input
wire ri1512n;	//input
wire ri1512p;	//input
wire ri1513n;	//input
wire ri1513p;	//input
wire ri1600n;	//input
wire ri1600p;	//input
wire ri1601n;	//input
wire ri1601p;	//input
wire ri1602n;	//input
wire ri1602p;	//input
wire ri1603n;	//input
wire ri1603p;	//input
wire ri1610n;	//input
wire ri1610p;	//input
wire ri1611n;	//input
wire ri1611p;	//input
wire ri1612n;	//input
wire ri1612p;	//input
wire ri1613n;	//input
wire ri1613p;	//input
wire ri1700n;	//input
wire ri1700p;	//input
wire ri1701n;	//input
wire ri1701p;	//input
wire ri1702n;	//input
wire ri1702p;	//input
wire ri1703n;	//input
wire ri1703p;	//input
wire ri1710n;	//input
wire ri1710p;	//input
wire ri1711n;	//input
wire ri1711p;	//input
wire ri1712n;	//input
wire ri1712p;	//input
wire ri1713n;	//input
wire ri1713p;	//input
wire[3:0] rpxn;	//input[3:0]
wire[3:0] rpxp;	//input[3:0]
reg rst_;	//input
wire tck;	//input
wire tdi;	//input
wire tms;	//input
wire trst_ = 1'b0;	//input
supply1 VDDTD;	//input
supply1 VDDTD_LBK;	//input
supply1 VDDTD_LBL;	//input
supply1 VDDTD_LBM;	//input
supply1 VDDTD_LBR;	//input
supply1 VDDTD_LBT;	//input
supply1 VDDTD_LBV;	//input
supply1 VDD;	//input
supply0 VSS;	//input
wire prbg0;	//output
wire prbg1;	//output
wire prbp0;	//output
wire prbp1;	//output
wire rck0px_cm;	//output
wire rck1px_cm;	//output
wire rck_cm00;	//output
wire rck_cm01;	//output
wire rck_cm10;	//output
wire rck_cm11;	//output
wire ti0000n;	//output
wire ti0000p;	//output
wire ti0001n;	//output
wire ti0001p;	//output
wire ti0002n;	//output
wire ti0002p;	//output
wire ti0003n;	//output
wire ti0003p;	//output
wire ti0010n;	//output
wire ti0010p;	//output
wire ti0011n;	//output
wire ti0011p;	//output
wire ti0012n;	//output
wire ti0012p;	//output
wire ti0013n;	//output
wire ti0013p;	//output
wire ti0100n;	//output
wire ti0100p;	//output
wire ti0101n;	//output
wire ti0101p;	//output
wire ti0102n;	//output
wire ti0102p;	//output
wire ti0103n;	//output
wire ti0103p;	//output
wire ti0110n;	//output
wire ti0110p;	//output
wire ti0111n;	//output
wire ti0111p;	//output
wire ti0112n;	//output
wire ti0112p;	//output
wire ti0113n;	//output
wire ti0113p;	//output
wire ti0200n;	//output
wire ti0200p;	//output
wire ti0201n;	//output
wire ti0201p;	//output
wire ti0202n;	//output
wire ti0202p;	//output
wire ti0203n;	//output
wire ti0203p;	//output
wire ti0210n;	//output
wire ti0210p;	//output
wire ti0211n;	//output
wire ti0211p;	//output
wire ti0212n;	//output
wire ti0212p;	//output
wire ti0213n;	//output
wire ti0213p;	//output
wire ti0300n;	//output
wire ti0300p;	//output
wire ti0301n;	//output
wire ti0301p;	//output
wire ti0302n;	//output
wire ti0302p;	//output
wire ti0303n;	//output
wire ti0303p;	//output
wire ti0310n;	//output
wire ti0310p;	//output
wire ti0311n;	//output
wire ti0311p;	//output
wire ti0312n;	//output
wire ti0312p;	//output
wire ti0313n;	//output
wire ti0313p;	//output
wire ti0400n;	//output
wire ti0400p;	//output
wire ti0401n;	//output
wire ti0401p;	//output
wire ti0402n;	//output
wire ti0402p;	//output
wire ti0403n;	//output
wire ti0403p;	//output
wire ti0410n;	//output
wire ti0410p;	//output
wire ti0411n;	//output
wire ti0411p;	//output
wire ti0412n;	//output
wire ti0412p;	//output
wire ti0413n;	//output
wire ti0413p;	//output
wire ti0500n;	//output
wire ti0500p;	//output
wire ti0501n;	//output
wire ti0501p;	//output
wire ti0502n;	//output
wire ti0502p;	//output
wire ti0503n;	//output
wire ti0503p;	//output
wire ti0510n;	//output
wire ti0510p;	//output
wire ti0511n;	//output
wire ti0511p;	//output
wire ti0512n;	//output
wire ti0512p;	//output
wire ti0513n;	//output
wire ti0513p;	//output
wire ti0600n;	//output
wire ti0600p;	//output
wire ti0601n;	//output
wire ti0601p;	//output
wire ti0602n;	//output
wire ti0602p;	//output
wire ti0603n;	//output
wire ti0603p;	//output
wire ti0610n;	//output
wire ti0610p;	//output
wire ti0611n;	//output
wire ti0611p;	//output
wire ti0612n;	//output
wire ti0612p;	//output
wire ti0613n;	//output
wire ti0613p;	//output
wire ti0700n;	//output
wire ti0700p;	//output
wire ti0701n;	//output
wire ti0701p;	//output
wire ti0702n;	//output
wire ti0702p;	//output
wire ti0703n;	//output
wire ti0703p;	//output
wire ti0710n;	//output
wire ti0710p;	//output
wire ti0711n;	//output
wire ti0711p;	//output
wire ti0712n;	//output
wire ti0712p;	//output
wire ti0713n;	//output
wire ti0713p;	//output
wire ti1000n;	//output
wire ti1000p;	//output
wire ti1001n;	//output
wire ti1001p;	//output
wire ti1002n;	//output
wire ti1002p;	//output
wire ti1003n;	//output
wire ti1003p;	//output
wire ti1010n;	//output
wire ti1010p;	//output
wire ti1011n;	//output
wire ti1011p;	//output
wire ti1012n;	//output
wire ti1012p;	//output
wire ti1013n;	//output
wire ti1013p;	//output
wire ti1100n;	//output
wire ti1100p;	//output
wire ti1101n;	//output
wire ti1101p;	//output
wire ti1102n;	//output
wire ti1102p;	//output
wire ti1103n;	//output
wire ti1103p;	//output
wire ti1110n;	//output
wire ti1110p;	//output
wire ti1111n;	//output
wire ti1111p;	//output
wire ti1112n;	//output
wire ti1112p;	//output
wire ti1113n;	//output
wire ti1113p;	//output
wire ti1200n;	//output
wire ti1200p;	//output
wire ti1201n;	//output
wire ti1201p;	//output
wire ti1202n;	//output
wire ti1202p;	//output
wire ti1203n;	//output
wire ti1203p;	//output
wire ti1210n;	//output
wire ti1210p;	//output
wire ti1211n;	//output
wire ti1211p;	//output
wire ti1212n;	//output
wire ti1212p;	//output
wire ti1213n;	//output
wire ti1213p;	//output
wire ti1300n;	//output
wire ti1300p;	//output
wire ti1301n;	//output
wire ti1301p;	//output
wire ti1302n;	//output
wire ti1302p;	//output
wire ti1303n;	//output
wire ti1303p;	//output
wire ti1310n;	//output
wire ti1310p;	//output
wire ti1311n;	//output
wire ti1311p;	//output
wire ti1312n;	//output
wire ti1312p;	//output
wire ti1313n;	//output
wire ti1313p;	//output
wire ti1400n;	//output
wire ti1400p;	//output
wire ti1401n;	//output
wire ti1401p;	//output
wire ti1402n;	//output
wire ti1402p;	//output
wire ti1403n;	//output
wire ti1403p;	//output
wire ti1410n;	//output
wire ti1410p;	//output
wire ti1411n;	//output
wire ti1411p;	//output
wire ti1412n;	//output
wire ti1412p;	//output
wire ti1413n;	//output
wire ti1413p;	//output
wire ti1500n;	//output
wire ti1500p;	//output
wire ti1501n;	//output
wire ti1501p;	//output
wire ti1502n;	//output
wire ti1502p;	//output
wire ti1503n;	//output
wire ti1503p;	//output
wire ti1510n;	//output
wire ti1510p;	//output
wire ti1511n;	//output
wire ti1511p;	//output
wire ti1512n;	//output
wire ti1512p;	//output
wire ti1513n;	//output
wire ti1513p;	//output
wire ti1600n;	//output
wire ti1600p;	//output
wire ti1601n;	//output
wire ti1601p;	//output
wire ti1602n;	//output
wire ti1602p;	//output
wire ti1603n;	//output
wire ti1603p;	//output
wire ti1610n;	//output
wire ti1610p;	//output
wire ti1611n;	//output
wire ti1611p;	//output
wire ti1612n;	//output
wire ti1612p;	//output
wire ti1613n;	//output
wire ti1613p;	//output
wire ti1700n;	//output
wire ti1700p;	//output
wire ti1701n;	//output
wire ti1701p;	//output
wire ti1702n;	//output
wire ti1702p;	//output
wire ti1703n;	//output
wire ti1703p;	//output
wire ti1710n;	//output
wire ti1710p;	//output
wire ti1711n;	//output
wire ti1711p;	//output
wire ti1712n;	//output
wire ti1712p;	//output
wire ti1713n;	//output
wire ti1713p;	//output
wire[3:0] tpxn;	//output[3:0]
wire[3:0] tpxp;	//output[3:0]

wire[3:0] remote_iopl2plu_rdy0;
wire[3:0] remote_iopl2plu_rdy1;
wire[3:0]  remote_iopl2plu_vld00;

wire dummy_clock;
wire fast_clock;
wire           mcc2plu_clk;
wire           mcc2lnd_clk;
//clkgen #(6500) clkgen2 (cclk);  
clkgen #(1250) clkgen0 (dummy_clock);	  
IXCcake1x #(200,  1000) clkgen1 (cclk,        dummy_clock);
IXCcake1x #(1000, 1000) clkgen2 (fast_clock,  dummy_clock);
IXCcake1x #(1000, 1000) clkgen3 (mcc2plu_clk, dummy_clock);
IXCcake1x #(1000, 1000) clkgen4 (mcc2lnd_clk, dummy_clock);

assign condor.ioyu.ioyu_int.ioyu_pll_wrapper.TCITSMCN28HPMGPMPLLA1.CLKOUT = fast_clock;
assign condor.mcore.score.yu.lb2yu_arraysig = 1'b1;

wire         yu_feed_ccore_reset; // connect to yu_reset
assign yu_feed_ccore_reset = condor.mcore.yu2cport0_feed_ccore0_reset; // connect to yu_reset
//////////////  MAIN STAT MACHINE ///////////////////

parameter IDLE  = 3'b000;
parameter RESET = 3'b001;
parameter INIT  = 3'b010;
parameter RUN   = 3'b011;

reg [1:0] main_stat_machine_stats;
reg [1:0] main_stat_machine_next_stats;
wire idel_stat_event;
assign idel_stat_event = (main_stat_machine_stats != IDLE) ? 1'b1 : 1'b0;

//////////////  RESET COUNTER ///////////////////
reg [31:0] reset_stat_counter;
reg [31:0] reset_stat_value;
wire reset_stat_event;
assign reset_stat_event = (main_stat_machine_stats != RESET) ? 1'b1 : 1'b0;
always @(posedge cclk)
	if (main_stat_machine_stats != RESET)begin
		reset_stat_counter <= 32'h00000000;
			end
	 else begin
		reset_stat_counter <= reset_stat_counter + 1;
		end

//////////////  INIT COUNTER ///////////////////
reg [31:0] init_stat_counter;
reg [31:0] init_stat_value;
wire init_stat_event;
assign init_stat_event = (main_stat_machine_stats != INIT) ? 1'b1 : 1'b0;
always @(posedge cclk)
	if (main_stat_machine_stats != INIT)begin
		init_stat_counter <= 32'h00000000;
			end
	 else begin
		init_stat_counter <= init_stat_counter + 1;
		end

//////////////  RUN COUNTER ///////////////////
reg [31:0] run_stat_counter;
reg [31:0] run_stat_value;
wire run_stat_event;
assign run_stat_event = (main_stat_machine_stats != RUN) ? 1'b1 : 1'b0;
always @(posedge cclk)
	if (main_stat_machine_stats != RUN)begin
		run_stat_counter <= 32'h00000000;
			end
	 else begin
		run_stat_counter <= run_stat_counter + 1;
		end

reg done;
/////////////////////////////////////////////////////
//////////////  MAIN STAT MACHINE ///////////////////
/////////////////////////////////////////////////////
always @(posedge cclk or negedge rst_)
	if (!rst_) begin
		main_stat_machine_next_stats <= IDLE;
		done <= 1'b0;
		end
	 else begin
		case (main_stat_machine_stats)
		   IDLE  : begin 
		   		if (!done)main_stat_machine_next_stats <= RESET;
			   end
		   RESET : begin 
		   		if (reset_stat_counter >= reset_stat_value)main_stat_machine_next_stats	<= INIT;
			   end
		   INIT : begin 
		   		if (init_stat_counter >= init_stat_value)main_stat_machine_next_stats <= RUN;
			   end
		   RUN : begin 
		   		if (run_stat_counter >= run_stat_value)begin
				main_stat_machine_next_stats <= IDLE;
				done <=1'b1;
					end
			   end
		 default : main_stat_machine_next_stats <= IDLE;
	 	endcase
	  end
always @(posedge cclk or negedge rst_)
	if (!rst_) begin
		main_stat_machine_stats <= IDLE;
		end
	 else begin
		main_stat_machine_stats <= main_stat_machine_next_stats;
	    end
//////////////  end of MAIN STAT MACHINE ///////////////////
  
wire [11:0]    dcp2lnd_p0s0_headroom_change;
wire           dcp2lnd_p0s0_headroom_change__vld;
wire [11:0]    dcp2lnd_p0s1_headroom_change;
wire           dcp2lnd_p0s1_headroom_change__vld;
wire [11:0]    dcp2lnd_p1s0_headroom_change;
wire           dcp2lnd_p1s0_headroom_change__vld;
wire [11:0]    dcp2lnd_p1s1_headroom_change;
wire           dcp2lnd_p1s1_headroom_change__vld;
wire           dcp2lnd_dcm_p0_mc_erif_inc_credit_inc;
wire           dcp2lnd_dcm_p0_data_rq_quota_dec_credit_inc;
wire           dcp2lnd_dcm_p0_pkt_rq_quota_dec_credit_inc;
wire           dcp2lnd_dcm_p0_mc_quota_dec_credit_inc;
wire           dcp2lnd_dcm_p1_mc_erif_inc_credit_inc;
wire           dcp2lnd_dcm_p1_data_rq_quota_dec_credit_inc;
wire           dcp2lnd_dcm_p1_pkt_rq_quota_dec_credit_inc;
wire           dcp2lnd_dcm_p1_mc_quota_dec_credit_inc;

wire [66:0]    lbc2plu_crbus ; //Connect
wire           lbc2plu_crbus__vld; //Connect
wire           lbc2plu_crbus_credit_inc; //Connect
wire [66:0]    lbc2lnd_llu_crbus; //Connect
wire           lbc2lnd_llu_crbus__vld; //Connect
wire           lbc2lnd_llu_crbus_credit_inc; //Connect

assign lbc2plu_crbus[66:0]          = condor.mcore.cport0.lbc2plu_crbus[66:0] ; //Connect
assign lbc2plu_crbus__vld           = condor.mcore.cport0.lbc2plu_crbus__vld; //Connect
assign lbc2plu_crbus_credit_inc     = condor.mcore.cport0.lbc2plu_crbus_credit_inc; //Connect
assign lbc2lnd_llu_crbus[66:0]      = condor.mcore.cport0.lbc2lnd_llu_crbus[66:0]; //Connect
assign lbc2lnd_llu_crbus__vld       = condor.mcore.cport0.lbc2lnd_llu_crbus__vld; //Connect
assign lbc2lnd_llu_crbus_credit_inc = condor.mcore.cport0.lbc2lnd_llu_crbus_credit_inc; //Connect

wire [66:0]    lbc2lnd_dcm_crbus;
wire           lbc2lnd_dcm_crbus__vld;
wire           lbc2lnd_dcm_crbus_credit_inc;
wire           lbc2plu_trc_credit_inc;
wire           lbc2lnd_llu_trc_credit_inc;
wire           lbc2lnd_dcm_trc_credit_inc;
wire [1:0]     lbc2plu_arraysig;
wire [1:0]     lbc2lnd_arraysig;
wire           x1lbc_test;
wire           x1lbc_test_speed;
wire           x1lbc_lbist;
wire [4:0]     lbc2plu_scan_en;
wire [412:0]   lbc2plu_scan;
wire [4:0]     lbc2lnd_scan_en;
wire [278:0]   lbc2lnd_scan;

wire [37:0]    lnd2lbc_llu_crbus;
wire           lnd2lbc_llu_crbus__vld;
wire [37:0]    lnd2lbc_dcm_crbus;
wire           lnd2lbc_dcm_crbus__vld;
wire [57:0]    lnd2lbc_dcm_trc;
wire           lnd2lbc_dcm_trc__vld;
wire [57:0]    lnd2lbc_llu_trc;
wire           lnd2lbc_llu_trc__vld;
wire [2:0]     lnd2lbc_llu_cause;
wire [2:0]     lnd2lbc_dcm_cause;
wire [322:0]   lnd2plu_p0_tx_desc;
wire [322:0]   lnd2plu_p1_tx_desc;
wire           lnd2plu_p0s0_tx_empty;
wire           lnd2plu_p0s1_tx_empty;
wire           lnd2plu_p1s0_tx_empty;
wire           lnd2plu_p1s1_tx_empty;
wire           lnd2plu_p0s0_send_pause_strb;
wire           lnd2plu_p0s1_send_pause_strb;
wire           lnd2plu_p1s0_send_pause_strb;
wire           lnd2plu_p1s1_send_pause_strb;
wire [7:0]     lnd2plu_p0s0_send_pause_xoff;
wire [7:0]     lnd2plu_p0s1_send_pause_xoff;
wire [7:0]     lnd2plu_p1s0_send_pause_xoff;
wire [7:0]     lnd2plu_p1s1_send_pause_xoff;
wire           lnd2plu_p0s0_width_increase;
wire           lnd2plu_p0s1_width_increase;
wire           lnd2plu_p1s0_width_increase;
wire           lnd2plu_p1s1_width_increase;
wire [297:0]   lnd2ptb_p0_rx_bus;
wire           lnd2ptb_p0_rx_bus__vld;
wire [297:0]   lnd2ptb_p1_rx_bus;
wire           lnd2ptb_p1_rx_bus__vld;
wire [12:0]    lnd2ptb_p0_free_headroom;
wire [12:0]    lnd2ptb_p1_free_headroom;
wire [7:0]     lnd2dqs_p0_xmit_fix_desc;
wire           lnd2dqs_p0_xmit_fix_desc__vld;
wire [7:0]     lnd2dqs_p1_xmit_fix_desc;
wire           lnd2dqs_p1_xmit_fix_desc__vld;
wire [8:0]     lnd2dqs_p0_pause_desc;
wire           lnd2dqs_p0_pause_desc__vld;
wire [8:0]     lnd2dqs_p1_pause_desc;
wire           lnd2dqs_p1_pause_desc__vld;
wire           lnd2dqs_p0s0_link_state;
wire           lnd2dqs_p0s1_link_state;
wire           lnd2dqs_p1s0_link_state;
wire           lnd2dqs_p1s1_link_state;
wire           lnd2dqs_p0s0_symbols_32_pulse;
wire           lnd2dqs_p0s1_symbols_32_pulse;
wire           lnd2dqs_p1s0_symbols_32_pulse;
wire           lnd2dqs_p1s1_symbols_32_pulse;
wire           lnd2dcp_p0s0_force_sf_phy;
wire           lnd2dcp_p0s1_force_sf_phy;
wire           lnd2dcp_p1s0_force_sf_phy;
wire           lnd2dcp_p1s1_force_sf_phy;
wire           lnd_dcp_p0s0_force_sf_link;
wire           lnd_dcp_p0s1_force_sf_link;
wire           lnd_dcp_p1s0_force_sf_link;
wire           lnd_dcp_p1s1_force_sf_link;
wire [7:0]     lnd2dql_p0_dcm_desc;
wire           lnd2dql_p0_dcm_desc__vld;
wire [7:0]     lnd2dql_p1_dcm_desc;
wire           lnd2dql_p1_dcm_desc__vld;
wire           lnd2dqs_p0s0_dcm_data_credit_inc;
wire           lnd2dqs_p0s1_dcm_data_credit_inc;
wire           lnd2dqs_p1s0_dcm_data_credit_inc;
wire           lnd2dqs_p1s1_dcm_data_credit_inc;
wire           lnd2dqs_p0s0_dcm_pkt_credit_inc;
wire           lnd2dqs_p0s1_dcm_pkt_credit_inc;
wire           lnd2dqs_p1s0_dcm_pkt_credit_inc;
wire           lnd2dqs_p1s1_dcm_pkt_credit_inc;
wire [266:0]   lnd2ptb_p0_eloop_bus;
wire           lnd2ptb_p0_eloop_bus__vld;
wire [266:0]   lnd2ptb_p1_eloop_bus;
wire           lnd2ptb_p1_eloop_bus__vld;
wire [79:0]    lnd2ptb_p0_eloop_ctrl_bus;
wire           lnd2ptb_p0_eloop_ctrl_bus__vld;
wire [79:0]    lnd2ptb_p1_eloop_ctrl_bus;
wire           lnd2ptb_p1_eloop_ctrl_bus__vld;
wire [30:0]    lnd2dcp_dcm_p0_mc_erif_inc;
wire           lnd2dcp_dcm_p0_mc_erif_inc__vld;
wire [30:0]    lnd2dcp_dcm_p1_mc_erif_inc;
wire           lnd2dcp_dcm_p1_mc_erif_inc__vld;
wire [23:0]    lnd2dcp_dcm_p0_data_rq_quota_dec;
wire           lnd2dcp_dcm_p0_data_rq_quota_dec__vld;
wire [23:0]    lnd2dcp_dcm_p1_data_rq_quota_dec;
wire           lnd2dcp_dcm_p1_data_rq_quota_dec__vld;
wire [11:0]    lnd2dcp_dcm_p0_pkt_rq_quota_dec;
wire           lnd2dcp_dcm_p0_pkt_rq_quota_dec__vld;
wire [11:0]    lnd2dcp_dcm_p1_pkt_rq_quota_dec;
wire           lnd2dcp_dcm_p1_pkt_rq_quota_dec__vld;
wire [17:0]    lnd2dcp_dcm_p0_mc_quota_dec;
wire           lnd2dcp_dcm_p0_mc_quota_dec__vld;
wire [17:0]    lnd2dcp_dcm_p1_mc_quota_dec;
wire           lnd2dcp_dcm_p1_mc_quota_dec__vld;
wire [278:0]   lnd2lbc_scan;
wire [3:0]     lnd2yu_mbist;
wire [1:0]     lnd2lbc_arraysig;

wire [37:0]    plu2lbc_crbus;
wire           plu2lbc_crbus__vld;
wire [57:0]    plu2lbc_trc;
wire           plu2lbc_trc__vld;
wire [2:0]     plu2lbc_cause;
wire [412:0]   plu2lbc_scan;
wire [3:0]     plu2yu_mbist;
wire [1:0]     plu2lbc_arraysig;

wire           plu2lnd_p0s0_phy_linkup;
wire           plu2lnd_p0s0_force_sf;
wire           plu2lnd_p0s0_wr_active_stop_data;
wire           plu2lnd_p0s0_tx_rdy;
wire           plu2lnd_p0s1_phy_linkup;
wire           plu2lnd_p0s1_force_sf;
wire           plu2lnd_p0s1_wr_active_stop_data;
wire           plu2lnd_p0s1_tx_rdy;
wire [48:0]    plu2lnd_p0_rx_credit_preemption_desc;
wire           plu2lnd_p0_rx_credit_preemption_desc__vld;
wire [312:0]   plu2lnd_p0_rx_desc;
wire           plu2lnd_p0_rx_desc__vld;
wire           plu2lnd_p0s0_timer_64ns_pulse;
wire           plu2lnd_p0s0_symbols_32_pulse;
wire           plu2lnd_p0s0_pcs_512_bit_time;
wire [205:0]   plu2lnd_p0s0_counters_inc;
wire           plu2lnd_p0s1_timer_64ns_pulse;
wire           plu2lnd_p0s1_symbols_32_pulse;
wire           plu2lnd_p0s1_pcs_512_bit_time;
wire [205:0]   plu2lnd_p0s1_counters_inc;
wire           plu2lnd_p1s0_phy_linkup;
wire           plu2lnd_p1s0_force_sf;
wire           plu2lnd_p1s0_wr_active_stop_data;
wire           plu2lnd_p1s0_tx_rdy;
wire           plu2lnd_p1s1_phy_linkup;
wire           plu2lnd_p1s1_force_sf;
wire           plu2lnd_p1s1_wr_active_stop_data;
wire           plu2lnd_p1s1_tx_rdy;
wire [48:0]    plu2lnd_p1_rx_credit_preemption_desc;
wire           plu2lnd_p1_rx_credit_preemption_desc__vld;
wire [312:0]   plu2lnd_p1_rx_desc;
wire           plu2lnd_p1_rx_desc__vld;
wire           plu2lnd_p1s0_timer_64ns_pulse;
wire           plu2lnd_p1s0_symbols_32_pulse;
wire           plu2lnd_p1s0_pcs_512_bit_time;
wire [205:0]   plu2lnd_p1s0_counters_inc;
wire           plu2lnd_p1s1_timer_64ns_pulse;
wire           plu2lnd_p1s1_symbols_32_pulse;
wire           plu2lnd_p1s1_pcs_512_bit_time;
wire [205:0]   plu2lnd_p1s1_counters_inc;
wire [40:0]    plu2iopl_pll;
wire [85:0]    plu2iopl_ctrl0;
wire [85:0]    plu2iopl_ctrl1;
wire [1:0]     plu2sma_power_governor_req;
wire [15:0]    plu2ir_phy_interrupt;
wire [79:0]    plu2iopl_data00; // connect
wire [79:0]    plu2iopl_data01; // connect
wire [79:0]    plu2iopl_data02; // connect
wire [79:0]    plu2iopl_data03; // connect
wire [79:0]    plu2iopl_data10; // connect
wire [79:0]    plu2iopl_data11; // connect
wire [79:0]    plu2iopl_data12; // connect
wire [79:0]    plu2iopl_data13; // connect

wire [12:0]    ptb2lnd_p0_free_lines;
wire           ptb2lnd_dcm_p0s0_rx_line96_release;
wire           ptb2lnd_dcm_p0s0_ctrl_credit_inc;
wire           ptb2lnd_dcm_p0s1_rx_line96_release;
wire           ptb2lnd_dcm_p0s1_ctrl_credit_inc;

wire [12:0]    ptb2lnd_p1_free_lines;
wire           ptb2lnd_dcm_p1s0_rx_line96_release;
wire           ptb2lnd_dcm_p1s0_ctrl_credit_inc;
wire           ptb2lnd_dcm_p1s1_rx_line96_release;
wire           ptb2lnd_dcm_p1s1_ctrl_credit_inc;


wire	     ir_crbus_timeout_meter_maid_feed_mcv_ccore;
wire	     ir_perf_cnt_en_feed_mcv_ccore;
wire	     ir_clock_sync_load_snapshot_feed_mcv_ccore;
wire	     yu_clock_sync_pps_feed_ccore;
wire	     yu_clock_sync_pulse_feed_ccore;

wire [2:0]   dqs2lnd_p0s0_time_cong_inc_feed_ccore;
wire         dqs2lnd_p0s0_xmit_wait_port_inc_feed_ccore;
wire [2:0]   dqs2lnd_p0s1_time_cong_inc_feed_ccore;
wire         dqs2lnd_p0s1_xmit_wait_port_inc_feed_ccore;
wire [2:0]   dqs2lnd_p1s0_time_cong_inc_feed_ccore;
wire         dqs2lnd_p1s0_xmit_wait_port_inc_feed_ccore;
wire [2:0]   dqs2lnd_p1s1_time_cong_inc_feed_ccore;
wire         dqs2lnd_p1s1_xmit_wait_port_inc_feed_ccore;
wire [18:0]  glc_lnd_headroom_desc_feed_ccore;
wire         glc_lnd_headroom_desc_feed_ccore__vld;
wire         glc_lnd_adaptive_headroom_en_feed_ccore;
wire [3:0]   xx2lnd_num;
wire [212:0] dql2lnd_p0_dcm_desc_feed_ccore;
wire         dql2lnd_p0_dcm_desc_feed_ccore__vld;
wire [212:0] dql2lnd_p1_dcm_desc_feed_ccore;
wire         dql2lnd_p1_dcm_desc_feed_ccore__vld;
wire [34:0] dqc2lnd_p0_dcm_desc_feed_ccore;
wire        dqc2lnd_p0_dcm_desc_feed_ccore__vld;
wire [34:0] dqc2lnd_p1_dcm_desc_feed_ccore;
wire        dqc2lnd_p1_dcm_desc_feed_ccore__vld;
wire [274:0] ptc2lnd_p0_dcm_desc_feed_ccore;
wire         ptc2lnd_p0_dcm_desc_feed_ccore__vld;
wire [274:0] ptc2lnd_p1_dcm_desc_feed_ccore;
wire         ptc2lnd_p1_dcm_desc_feed_ccore__vld;

wire [6:0]   x1yu_mbist_bus_feed_ccore;
wire [8:0]   yu_mbist_bus_feed_ccore;
wire         x1yu2lnd_array_shut_down_feed_ccore;
wire           x1lnd2lbc_a2d_prbg;
wire           x1lnd2lbc_a2d_prbp;


wire         x1yu2plu_array_shut_down_feed_ccore;
wire           x1plu2lbc_a2d_prbg;
wire           x1plu2lbc_a2d_prbp;

wire [41:0]  iopl2plu_ctrl0_feed_ioplc;
wire [41:0]  iopl2plu_ctrl1_feed_ioplc;
wire [79:0]  iopl2plu_data00_feed_ioplc; // connect
wire [79:0]  iopl2plu_data01_feed_ioplc; // connect
wire [79:0]  iopl2plu_data02_feed_ioplc; // connect
wire [79:0]  iopl2plu_data03_feed_ioplc; // connect
wire [79:0]  iopl2plu_data10_feed_ioplc; // connect
wire [79:0]  iopl2plu_data11_feed_ioplc; // connect
wire [79:0]  iopl2plu_data12_feed_ioplc; // connect
wire [79:0]  iopl2plu_data13_feed_ioplc; // connect
wire [32:0]  iopl2plu_pll_feed_ioplc;
wire [3:0]   iopl2plu_rdy0_feed_ioplc; // connect
wire [3:0]   iopl2plu_rdy1_feed_ioplc; // connect
wire         iopl2plu_vld00_feed_ioplc; // connect
wire         iopl2plu_vld01_feed_ioplc; // connect
wire         iopl2plu_vld02_feed_ioplc; // connect
wire         iopl2plu_vld03_feed_ioplc; // connect
wire         iopl2plu_vld10_feed_ioplc; // connect
wire         iopl2plu_vld11_feed_ioplc; // connect
wire         iopl2plu_vld12_feed_ioplc; // connect
wire         iopl2plu_vld13_feed_ioplc; // connect

wire [1:0]   sma2plu_power_governor_gnt_feed_mcv_ccore;

lndremote lndremote(
    .clk(mcc2lnd_clk),
    .yu_reset(yu_feed_ccore_reset),
    .lb2lnd_llu_crbus(lbc2lnd_llu_crbus),
    .lb2lnd_llu_crbus__vld(lbc2lnd_llu_crbus__vld),
    .lnd2lb_llu_crbus(),//lnd2lbc_llu_crbus),
    .lnd2lb_llu_crbus__vld(),//lnd2lbc_llu_crbus__vld),
    .lb2lnd_llu_crbus_credit_inc(lbc2lnd_llu_crbus_credit_inc),
    .lb2lnd_dcm_crbus(lbc2lnd_dcm_crbus),
    .lb2lnd_dcm_crbus__vld(lbc2lnd_dcm_crbus__vld),
    .lnd2lb_dcm_crbus(),//lnd2lbc_dcm_crbus),
    .lnd2lb_dcm_crbus__vld(),//lnd2lbc_dcm_crbus__vld),
    .lb2lnd_dcm_crbus_credit_inc(lbc2lnd_dcm_crbus_credit_inc),
    .ir_crbus_timeout_meter_maid(ir_crbus_timeout_meter_maid_feed_mcv_ccore),
    .x1lb_test(x1lbc_test),
    .x1lb_test_speed(x1lbc_test_speed),
    .x1lb_lbist(x1lbc_lbist),
    .ir_perf_cnt_en(ir_perf_cnt_en_feed_mcv_ccore),
    .lnd2lb_dcm_trc(),//lnd2lbc_dcm_trc),
    .lnd2lb_dcm_trc__vld(),//lnd2lbc_dcm_trc__vld),
    .lb2lnd_dcm_trc_credit_inc(lbc2lnd_dcm_trc_credit_inc),
    .lnd2lb_llu_trc(),//lnd2lbc_llu_trc),
    .lnd2lb_llu_trc__vld(),//lnd2lbc_llu_trc__vld),
    .lb2lnd_llu_trc_credit_inc(lbc2lnd_llu_trc_credit_inc),
    .ir_clock_sync_load_snapshot(ir_clock_sync_load_snapshot_feed_mcv_ccore),
    .yu_clock_sync_pps(yu_clock_sync_pps_feed_ccore),
    .yu_clock_sync_pulse(yu_clock_sync_pulse_feed_ccore),
    .lnd2lb_llu_cause(),//lnd2lbc_llu_cause),
    .lnd2lb_dcm_cause(),//lnd2lbc_dcm_cause),
    .plu2lnd_p0_rx_desc(plu2lnd_p0_rx_desc),
    .plu2lnd_p0_rx_desc__vld(plu2lnd_p0_rx_desc__vld),
    .plu2lnd_p1_rx_desc(plu2lnd_p1_rx_desc),
    .plu2lnd_p1_rx_desc__vld(plu2lnd_p1_rx_desc__vld),
    .plu2lnd_p0_rx_credit_preemption_desc(plu2lnd_p0_rx_credit_preemption_desc),
    .plu2lnd_p0_rx_credit_preemption_desc__vld(plu2lnd_p0_rx_credit_preemption_desc__vld),
    .plu2lnd_p1_rx_credit_preemption_desc(plu2lnd_p1_rx_credit_preemption_desc),
    .plu2lnd_p1_rx_credit_preemption_desc__vld(plu2lnd_p1_rx_credit_preemption_desc__vld),
    .plu2lnd_p0s0_counters_inc(plu2lnd_p0s0_counters_inc),
    .plu2lnd_p0s1_counters_inc(plu2lnd_p0s1_counters_inc),
    .plu2lnd_p1s0_counters_inc(plu2lnd_p1s0_counters_inc),
    .plu2lnd_p1s1_counters_inc(plu2lnd_p1s1_counters_inc),
    .plu2lnd_p0s0_timer_64ns_pulse(plu2lnd_p0s0_timer_64ns_pulse),
    .plu2lnd_p0s1_timer_64ns_pulse(plu2lnd_p0s1_timer_64ns_pulse),
    .plu2lnd_p1s0_timer_64ns_pulse(plu2lnd_p1s0_timer_64ns_pulse),
    .plu2lnd_p1s1_timer_64ns_pulse(plu2lnd_p1s1_timer_64ns_pulse),
    .plu2lnd_p0s0_symbols_32_pulse(plu2lnd_p0s0_symbols_32_pulse),
    .plu2lnd_p0s1_symbols_32_pulse(plu2lnd_p0s1_symbols_32_pulse),
    .plu2lnd_p1s0_symbols_32_pulse(plu2lnd_p1s0_symbols_32_pulse),
    .plu2lnd_p1s1_symbols_32_pulse(plu2lnd_p1s1_symbols_32_pulse),
    .plu2lnd_p0s0_pcs_512_bit_time(plu2lnd_p0s0_pcs_512_bit_time),
    .plu2lnd_p0s1_pcs_512_bit_time(plu2lnd_p0s1_pcs_512_bit_time),
    .plu2lnd_p1s0_pcs_512_bit_time(plu2lnd_p1s0_pcs_512_bit_time),
    .plu2lnd_p1s1_pcs_512_bit_time(plu2lnd_p1s1_pcs_512_bit_time),
    .plu2lnd_p0s0_tx_rdy(plu2lnd_p0s0_tx_rdy),
    .plu2lnd_p0s1_tx_rdy(plu2lnd_p0s1_tx_rdy),
    .plu2lnd_p1s0_tx_rdy(plu2lnd_p1s0_tx_rdy),
    .plu2lnd_p1s1_tx_rdy(plu2lnd_p1s1_tx_rdy),
    .plu2lnd_p0s0_force_sf(plu2lnd_p0s0_force_sf),
    .plu2lnd_p0s1_force_sf(plu2lnd_p0s1_force_sf),
    .plu2lnd_p1s0_force_sf(plu2lnd_p1s0_force_sf),
    .plu2lnd_p1s1_force_sf(plu2lnd_p1s1_force_sf),
    .plu2lnd_p0s0_phy_linkup(plu2lnd_p0s0_phy_linkup),
    .plu2lnd_p0s1_phy_linkup(plu2lnd_p0s1_phy_linkup),
    .plu2lnd_p1s0_phy_linkup(plu2lnd_p1s0_phy_linkup),
    .plu2lnd_p1s1_phy_linkup(plu2lnd_p1s1_phy_linkup),
    .plu2lnd_p0s0_wr_active_stop_data(plu2lnd_p0s0_wr_active_stop_data),
    .plu2lnd_p0s1_wr_active_stop_data(plu2lnd_p0s1_wr_active_stop_data),
    .plu2lnd_p1s0_wr_active_stop_data(plu2lnd_p1s0_wr_active_stop_data),
    .plu2lnd_p1s1_wr_active_stop_data(plu2lnd_p1s1_wr_active_stop_data),
    .lnd2plu_p0_tx_desc(lnd2plu_p0_tx_desc),
    .lnd2plu_p1_tx_desc(lnd2plu_p1_tx_desc),
    .lnd2plu_p0s0_tx_empty(lnd2plu_p0s0_tx_empty),
    .lnd2plu_p0s1_tx_empty(lnd2plu_p0s1_tx_empty),
    .lnd2plu_p1s0_tx_empty(lnd2plu_p1s0_tx_empty),
    .lnd2plu_p1s1_tx_empty(lnd2plu_p1s1_tx_empty),
    .lnd2plu_p0s0_send_pause_strb(lnd2plu_p0s0_send_pause_strb),
    .lnd2plu_p0s1_send_pause_strb(lnd2plu_p0s1_send_pause_strb),
    .lnd2plu_p1s0_send_pause_strb(lnd2plu_p1s0_send_pause_strb),
    .lnd2plu_p1s1_send_pause_strb(lnd2plu_p1s1_send_pause_strb),
    .lnd2plu_p0s0_send_pause_xoff(lnd2plu_p0s0_send_pause_xoff),
    .lnd2plu_p0s1_send_pause_xoff(lnd2plu_p0s1_send_pause_xoff),
    .lnd2plu_p1s0_send_pause_xoff(lnd2plu_p1s0_send_pause_xoff),
    .lnd2plu_p1s1_send_pause_xoff(lnd2plu_p1s1_send_pause_xoff),
    .lnd2plu_p0s0_width_increase(lnd2plu_p0s0_width_increase),
    .lnd2plu_p0s1_width_increase(lnd2plu_p0s1_width_increase),
    .lnd2plu_p1s0_width_increase(lnd2plu_p1s0_width_increase),
    .lnd2plu_p1s1_width_increase(lnd2plu_p1s1_width_increase),
    .lnd2ptb_p0_rx_bus(),//lnd2ptb_p0_rx_bus),
    .lnd2ptb_p0_rx_bus__vld(),//lnd2ptb_p0_rx_bus__vld),
    .lnd2ptb_p1_rx_bus(),//lnd2ptb_p1_rx_bus),
    .lnd2ptb_p1_rx_bus__vld(),//lnd2ptb_p1_rx_bus__vld),
    .ptb2lnd_p0_free_lines(ptb2lnd_p0_free_lines),
    .ptb2lnd_p1_free_lines(ptb2lnd_p1_free_lines),
    .lnd2ptb_p0_free_headroom(),//lnd2ptb_p0_free_headroom),
    .lnd2ptb_p1_free_headroom(),//lnd2ptb_p1_free_headroom),
    .dqs2lnd_p0s0_xmit_wait_port_inc(dqs2lnd_p0s0_xmit_wait_port_inc_feed_ccore),
    .dqs2lnd_p0s1_xmit_wait_port_inc(dqs2lnd_p0s1_xmit_wait_port_inc_feed_ccore),
    .dqs2lnd_p1s0_xmit_wait_port_inc(dqs2lnd_p1s0_xmit_wait_port_inc_feed_ccore),
    .dqs2lnd_p1s1_xmit_wait_port_inc(dqs2lnd_p1s1_xmit_wait_port_inc_feed_ccore),
    .dqs2lnd_p0s0_time_cong_inc(dqs2lnd_p0s0_time_cong_inc_feed_ccore),
    .dqs2lnd_p0s1_time_cong_inc(dqs2lnd_p0s1_time_cong_inc_feed_ccore),
    .dqs2lnd_p1s0_time_cong_inc(dqs2lnd_p1s0_time_cong_inc_feed_ccore),
    .dqs2lnd_p1s1_time_cong_inc(dqs2lnd_p1s1_time_cong_inc_feed_ccore),
    .lnd2dqs_p0_xmit_fix_desc(),//lnd2dqs_p0_xmit_fix_desc),
    .lnd2dqs_p0_xmit_fix_desc__vld(),//lnd2dqs_p0_xmit_fix_desc__vld),
    .lnd2dqs_p1_xmit_fix_desc(),//lnd2dqs_p1_xmit_fix_desc),
    .lnd2dqs_p1_xmit_fix_desc__vld(),//lnd2dqs_p1_xmit_fix_desc__vld),
    .lnd2dqs_p0_pause_desc(),//lnd2dqs_p0_pause_desc),
    .lnd2dqs_p0_pause_desc__vld(),//lnd2dqs_p0_pause_desc__vld),
    .lnd2dqs_p1_pause_desc(),//lnd2dqs_p1_pause_desc),
    .lnd2dqs_p1_pause_desc__vld(),//lnd2dqs_p1_pause_desc__vld),
    .lnd2dqs_p0s0_link_state(),//lnd2dqs_p0s0_link_state),
    .lnd2dqs_p0s1_link_state(),//lnd2dqs_p0s1_link_state),
    .lnd2dqs_p1s0_link_state(),//lnd2dqs_p1s0_link_state),
    .lnd2dqs_p1s1_link_state(),//lnd2dqs_p1s1_link_state),
    .lnd2dqs_p0s0_symbols_32_pulse(),//lnd2dqs_p0s0_symbols_32_pulse),
    .lnd2dqs_p0s1_symbols_32_pulse(),//lnd2dqs_p0s1_symbols_32_pulse),
    .lnd2dqs_p1s0_symbols_32_pulse(),//lnd2dqs_p1s0_symbols_32_pulse),
    .lnd2dqs_p1s1_symbols_32_pulse(),//lnd2dqs_p1s1_symbols_32_pulse),
    .lnd2dcp_p0s0_force_sf_phy(),//lnd2dcp_p0s0_force_sf_phy),
    .lnd2dcp_p0s1_force_sf_phy(),//lnd2dcp_p0s1_force_sf_phy),
    .lnd2dcp_p1s0_force_sf_phy(),//lnd2dcp_p1s0_force_sf_phy),
    .lnd2dcp_p1s1_force_sf_phy(),//lnd2dcp_p1s1_force_sf_phy),
    .lnd_dcp_p0s0_force_sf_link(lnd_dcp_p0s0_force_sf_link),
    .lnd_dcp_p0s1_force_sf_link(lnd_dcp_p0s1_force_sf_link),
    .lnd_dcp_p1s0_force_sf_link(lnd_dcp_p1s0_force_sf_link),
    .lnd_dcp_p1s1_force_sf_link(lnd_dcp_p1s1_force_sf_link),
    .dcp2lnd_p0s0_headroom_change(dcp2lnd_p0s0_headroom_change),
    .dcp2lnd_p0s0_headroom_change__vld(dcp2lnd_p0s0_headroom_change__vld),
    .dcp2lnd_p0s1_headroom_change(dcp2lnd_p0s1_headroom_change),
    .dcp2lnd_p0s1_headroom_change__vld(dcp2lnd_p0s1_headroom_change__vld),
    .dcp2lnd_p1s0_headroom_change(dcp2lnd_p1s0_headroom_change),
    .dcp2lnd_p1s0_headroom_change__vld(dcp2lnd_p1s0_headroom_change__vld),
    .dcp2lnd_p1s1_headroom_change(dcp2lnd_p1s1_headroom_change),
    .dcp2lnd_p1s1_headroom_change__vld(dcp2lnd_p1s1_headroom_change__vld),
    .glc_lnd_headroom_desc(glc_lnd_headroom_desc_feed_ccore),
    .glc_lnd_headroom_desc__vld(glc_lnd_headroom_desc_feed_ccore__vld),
    .glc_lnd_adaptive_headroom_en(glc_lnd_adaptive_headroom_en_feed_ccore),
    .xx2lnd_num(xx2lnd_num),
    .dql2lnd_p0_dcm_desc(dql2lnd_p0_dcm_desc_feed_ccore),
    .dql2lnd_p0_dcm_desc__vld(dql2lnd_p0_dcm_desc_feed_ccore__vld),
    .dql2lnd_p1_dcm_desc(dql2lnd_p1_dcm_desc_feed_ccore),
    .dql2lnd_p1_dcm_desc__vld(dql2lnd_p1_dcm_desc_feed_ccore__vld),
    .lnd2dql_p0_dcm_desc(),//lnd2dql_p0_dcm_desc),
    .lnd2dql_p0_dcm_desc__vld(),//lnd2dql_p0_dcm_desc__vld),
    .lnd2dql_p1_dcm_desc(),//lnd2dql_p1_dcm_desc),
    .lnd2dql_p1_dcm_desc__vld(),//lnd2dql_p1_dcm_desc__vld),
    .dqc2lnd_p0_dcm_desc(dqc2lnd_p0_dcm_desc_feed_ccore),
    .dqc2lnd_p0_dcm_desc__vld(dqc2lnd_p0_dcm_desc_feed_ccore__vld),
    .dqc2lnd_p1_dcm_desc(dqc2lnd_p1_dcm_desc_feed_ccore),
    .dqc2lnd_p1_dcm_desc__vld(dqc2lnd_p1_dcm_desc_feed_ccore__vld),
    .ptc2lnd_p0_dcm_desc(ptc2lnd_p0_dcm_desc_feed_ccore),
    .ptc2lnd_p0_dcm_desc__vld(ptc2lnd_p0_dcm_desc_feed_ccore__vld),
    .ptc2lnd_p1_dcm_desc(ptc2lnd_p1_dcm_desc_feed_ccore),
    .ptc2lnd_p1_dcm_desc__vld(ptc2lnd_p1_dcm_desc_feed_ccore__vld),
    .lnd2dqs_p0s0_dcm_data_credit_inc(),//lnd2dqs_p0s0_dcm_data_credit_inc),
    .lnd2dqs_p0s1_dcm_data_credit_inc(),//lnd2dqs_p0s1_dcm_data_credit_inc),
    .lnd2dqs_p1s0_dcm_data_credit_inc(),//lnd2dqs_p1s0_dcm_data_credit_inc),
    .lnd2dqs_p1s1_dcm_data_credit_inc(),//lnd2dqs_p1s1_dcm_data_credit_inc),
    .lnd2dqs_p0s0_dcm_pkt_credit_inc(),//lnd2dqs_p0s0_dcm_pkt_credit_inc),
    .lnd2dqs_p0s1_dcm_pkt_credit_inc(),//lnd2dqs_p0s1_dcm_pkt_credit_inc),
    .lnd2dqs_p1s0_dcm_pkt_credit_inc(),//lnd2dqs_p1s0_dcm_pkt_credit_inc),
    .lnd2dqs_p1s1_dcm_pkt_credit_inc(),//lnd2dqs_p1s1_dcm_pkt_credit_inc),
    .lnd2ptb_p0_eloop_bus(),//lnd2ptb_p0_eloop_bus),
    .lnd2ptb_p0_eloop_bus__vld(),//lnd2ptb_p0_eloop_bus__vld),
    .lnd2ptb_p1_eloop_bus(),//lnd2ptb_p1_eloop_bus),
    .lnd2ptb_p1_eloop_bus__vld(),//lnd2ptb_p1_eloop_bus__vld),
    .lnd2ptb_p0_eloop_ctrl_bus(),//lnd2ptb_p0_eloop_ctrl_bus),
    .lnd2ptb_p0_eloop_ctrl_bus__vld(),//lnd2ptb_p0_eloop_ctrl_bus__vld),
    .lnd2ptb_p1_eloop_ctrl_bus(),//lnd2ptb_p1_eloop_ctrl_bus),
    .lnd2ptb_p1_eloop_ctrl_bus__vld(),//lnd2ptb_p1_eloop_ctrl_bus__vld),
    .ptb2lnd_dcm_p0s0_rx_line96_release(ptb2lnd_dcm_p0s0_rx_line96_release),
    .ptb2lnd_dcm_p0s1_rx_line96_release(ptb2lnd_dcm_p0s1_rx_line96_release),
    .ptb2lnd_dcm_p1s0_rx_line96_release(ptb2lnd_dcm_p1s0_rx_line96_release),
    .ptb2lnd_dcm_p1s1_rx_line96_release(ptb2lnd_dcm_p1s1_rx_line96_release),
    .ptb2lnd_dcm_p0s0_ctrl_credit_inc(ptb2lnd_dcm_p0s0_ctrl_credit_inc),
    .ptb2lnd_dcm_p0s1_ctrl_credit_inc(ptb2lnd_dcm_p0s1_ctrl_credit_inc),
    .ptb2lnd_dcm_p1s0_ctrl_credit_inc(ptb2lnd_dcm_p1s0_ctrl_credit_inc),
    .ptb2lnd_dcm_p1s1_ctrl_credit_inc(ptb2lnd_dcm_p1s1_ctrl_credit_inc),
    .lnd2dcp_dcm_p0_mc_erif_inc(),//lnd2dcp_dcm_p0_mc_erif_inc),
    .lnd2dcp_dcm_p0_mc_erif_inc__vld(),//lnd2dcp_dcm_p0_mc_erif_inc__vld),
    .lnd2dcp_dcm_p1_mc_erif_inc(),//lnd2dcp_dcm_p1_mc_erif_inc),
    .lnd2dcp_dcm_p1_mc_erif_inc__vld(),//lnd2dcp_dcm_p1_mc_erif_inc__vld),
    .dcp2lnd_dcm_p0_mc_erif_inc_credit_inc(dcp2lnd_dcm_p0_mc_erif_inc_credit_inc),
    .dcp2lnd_dcm_p1_mc_erif_inc_credit_inc(dcp2lnd_dcm_p1_mc_erif_inc_credit_inc),
    .lnd2dcp_dcm_p0_data_rq_quota_dec(),//lnd2dcp_dcm_p0_data_rq_quota_dec),
    .lnd2dcp_dcm_p0_data_rq_quota_dec__vld(),//lnd2dcp_dcm_p0_data_rq_quota_dec__vld),
    .lnd2dcp_dcm_p1_data_rq_quota_dec(),//lnd2dcp_dcm_p1_data_rq_quota_dec),
    .lnd2dcp_dcm_p1_data_rq_quota_dec__vld(),//lnd2dcp_dcm_p1_data_rq_quota_dec__vld),
    .dcp2lnd_dcm_p0_data_rq_quota_dec_credit_inc(dcp2lnd_dcm_p0_data_rq_quota_dec_credit_inc),
    .dcp2lnd_dcm_p1_data_rq_quota_dec_credit_inc(dcp2lnd_dcm_p1_data_rq_quota_dec_credit_inc),
    .lnd2dcp_dcm_p0_pkt_rq_quota_dec(),//lnd2dcp_dcm_p0_pkt_rq_quota_dec),
    .lnd2dcp_dcm_p0_pkt_rq_quota_dec__vld(),//lnd2dcp_dcm_p0_pkt_rq_quota_dec__vld),
    .lnd2dcp_dcm_p1_pkt_rq_quota_dec(),//lnd2dcp_dcm_p1_pkt_rq_quota_dec),
    .lnd2dcp_dcm_p1_pkt_rq_quota_dec__vld(),//lnd2dcp_dcm_p1_pkt_rq_quota_dec__vld),
    .dcp2lnd_dcm_p0_pkt_rq_quota_dec_credit_inc(dcp2lnd_dcm_p0_pkt_rq_quota_dec_credit_inc),
    .dcp2lnd_dcm_p1_pkt_rq_quota_dec_credit_inc(dcp2lnd_dcm_p1_pkt_rq_quota_dec_credit_inc),
    .lnd2dcp_dcm_p0_mc_quota_dec(),//lnd2dcp_dcm_p0_mc_quota_dec),
    .lnd2dcp_dcm_p0_mc_quota_dec__vld(),//lnd2dcp_dcm_p0_mc_quota_dec__vld),
    .lnd2dcp_dcm_p1_mc_quota_dec(),//lnd2dcp_dcm_p1_mc_quota_dec),
    .lnd2dcp_dcm_p1_mc_quota_dec__vld(),//lnd2dcp_dcm_p1_mc_quota_dec__vld),
    .dcp2lnd_dcm_p0_mc_quota_dec_credit_inc(dcp2lnd_dcm_p0_mc_quota_dec_credit_inc),
    .dcp2lnd_dcm_p1_mc_quota_dec_credit_inc(dcp2lnd_dcm_p1_mc_quota_dec_credit_inc),
    .lb2lnd_scan_en(lbc2lnd_scan_en),
    .lb2lnd_scan(lbc2lnd_scan),
    .lnd2lb_scan(),//lnd2lbc_scan),
    .x1yu_mbist_bus(x1yu_mbist_bus_feed_ccore),
    .yu_mbist_bus(yu_mbist_bus_feed_ccore),
    .lnd2yu_mbist(),//lnd2yu_mbist),
    .lnd2lb_arraysig(),//lnd2lbc_arraysig),
    .lb2lnd_arraysig(lbc2lnd_arraysig),
    .x1yu2lnd_array_shut_down(x1yu2lnd_array_shut_down_feed_ccore),
    .x1lnd2lb_a2d_prbg(x1lnd2lbc_a2d_prbg),
    .x1lnd2lb_a2d_prbp(x1lnd2lbc_a2d_prbp)
);


plu pluremote(
    .clk(mcc2plu_clk),
    .yu_reset(yu_feed_ccore_reset),
    .lb2plu_crbus(lbc2plu_crbus),
    .lb2plu_crbus__vld(lbc2plu_crbus__vld),
    .plu2lb_crbus(),//plu2lbc_crbus),
    .plu2lb_crbus__vld(),//plu2lbc_crbus__vld),
    .lb2plu_crbus_credit_inc(lbc2plu_crbus_credit_inc),
    .ir_crbus_timeout_meter_maid(ir_crbus_timeout_meter_maid_feed_mcv_ccore),
    .plu2lb_trc(),//plu2lbc_trc),
    .plu2lb_trc__vld(),//plu2lbc_trc__vld),
    .lb2plu_trc_credit_inc(lbc2plu_trc_credit_inc),
    .ir_perf_cnt_en(ir_perf_cnt_en_feed_mcv_ccore),
    .plu2lb_cause(),//plu2lbc_cause),
    .x1lb_test(x1lbc_test),
    .x1lb_test_speed(x1lbc_test_speed),
    .x1lb_lbist(x1lbc_lbist),
    .lb2plu_scan_en(lbc2plu_scan_en),
    .lb2plu_scan(lbc2plu_scan),
    .plu2lb_scan(),//plu2lbc_scan),
    .x1yu_mbist_bus(x1yu_mbist_bus_feed_ccore),
    .yu_mbist_bus(yu_mbist_bus_feed_ccore),
    .plu2yu_mbist(),//plu2yu_mbist),
    .plu2lb_arraysig(),//plu2lbc_arraysig),
    .lb2plu_arraysig(lbc2plu_arraysig),
    .x1yu2plu_array_shut_down(x1yu2plu_array_shut_down_feed_ccore),
    .x1plu2lb_a2d_prbg(x1plu2lbc_a2d_prbg),
    .x1plu2lb_a2d_prbp(x1plu2lbc_a2d_prbp),
    .plu2lnd_p0s0_phy_linkup(plu2lnd_p0s0_phy_linkup),
    .plu2lnd_p0s0_force_sf(plu2lnd_p0s0_force_sf),
    .plu2lnd_p0s0_wr_active_stop_data(plu2lnd_p0s0_wr_active_stop_data),
    .plu2lnd_p0s0_tx_rdy(plu2lnd_p0s0_tx_rdy),
    .lnd2plu_p0s0_width_increase(lnd2plu_p0s0_width_increase),
    .lnd2plu_p0s0_tx_empty(lnd2plu_p0s0_tx_empty),
    .lnd2plu_p0s0_send_pause_strb(lnd2plu_p0s0_send_pause_strb),
    .lnd2plu_p0s0_send_pause_xoff(lnd2plu_p0s0_send_pause_xoff),
    .plu2lnd_p0s1_phy_linkup(plu2lnd_p0s1_phy_linkup),
    .plu2lnd_p0s1_force_sf(plu2lnd_p0s1_force_sf),
    .plu2lnd_p0s1_wr_active_stop_data(plu2lnd_p0s1_wr_active_stop_data),
    .plu2lnd_p0s1_tx_rdy(plu2lnd_p0s1_tx_rdy),
    .lnd2plu_p0s1_width_increase(lnd2plu_p0s1_width_increase),
    .lnd2plu_p0s1_tx_empty(lnd2plu_p0s1_tx_empty),
    .lnd2plu_p0s1_send_pause_strb(lnd2plu_p0s1_send_pause_strb),
    .lnd2plu_p0s1_send_pause_xoff(lnd2plu_p0s1_send_pause_xoff),
    .plu2lnd_p0_rx_credit_preemption_desc(plu2lnd_p0_rx_credit_preemption_desc),
    .plu2lnd_p0_rx_credit_preemption_desc__vld(plu2lnd_p0_rx_credit_preemption_desc__vld),
    .plu2lnd_p0_rx_desc(plu2lnd_p0_rx_desc),
    .plu2lnd_p0_rx_desc__vld(plu2lnd_p0_rx_desc__vld),
    .lnd2plu_p0_tx_desc(lnd2plu_p0_tx_desc),
    .plu2lnd_p0s0_timer_64ns_pulse(plu2lnd_p0s0_timer_64ns_pulse),
    .plu2lnd_p0s0_symbols_32_pulse(plu2lnd_p0s0_symbols_32_pulse),
    .plu2lnd_p0s0_pcs_512_bit_time(plu2lnd_p0s0_pcs_512_bit_time),
    .plu2lnd_p0s0_counters_inc(plu2lnd_p0s0_counters_inc),
    .plu2lnd_p0s1_timer_64ns_pulse(plu2lnd_p0s1_timer_64ns_pulse),
    .plu2lnd_p0s1_symbols_32_pulse(plu2lnd_p0s1_symbols_32_pulse),
    .plu2lnd_p0s1_pcs_512_bit_time(plu2lnd_p0s1_pcs_512_bit_time),
    .plu2lnd_p0s1_counters_inc(plu2lnd_p0s1_counters_inc),
    .plu2lnd_p1s0_phy_linkup(plu2lnd_p1s0_phy_linkup),
    .plu2lnd_p1s0_force_sf(plu2lnd_p1s0_force_sf),
    .plu2lnd_p1s0_wr_active_stop_data(plu2lnd_p1s0_wr_active_stop_data),
    .plu2lnd_p1s0_tx_rdy(plu2lnd_p1s0_tx_rdy),
    .lnd2plu_p1s0_width_increase(lnd2plu_p1s0_width_increase),
    .lnd2plu_p1s0_tx_empty(lnd2plu_p1s0_tx_empty),
    .lnd2plu_p1s0_send_pause_strb(lnd2plu_p1s0_send_pause_strb),
    .lnd2plu_p1s0_send_pause_xoff(lnd2plu_p1s0_send_pause_xoff),
    .plu2lnd_p1s1_phy_linkup(plu2lnd_p1s1_phy_linkup),
    .plu2lnd_p1s1_force_sf(plu2lnd_p1s1_force_sf),
    .plu2lnd_p1s1_wr_active_stop_data(plu2lnd_p1s1_wr_active_stop_data),
    .plu2lnd_p1s1_tx_rdy(plu2lnd_p1s1_tx_rdy),
    .lnd2plu_p1s1_width_increase(lnd2plu_p1s1_width_increase),
    .lnd2plu_p1s1_tx_empty(lnd2plu_p1s1_tx_empty),
    .lnd2plu_p1s1_send_pause_strb(lnd2plu_p1s1_send_pause_strb),
    .lnd2plu_p1s1_send_pause_xoff(lnd2plu_p1s1_send_pause_xoff),
    .plu2lnd_p1_rx_credit_preemption_desc(plu2lnd_p1_rx_credit_preemption_desc),
    .plu2lnd_p1_rx_credit_preemption_desc__vld(plu2lnd_p1_rx_credit_preemption_desc__vld),
    .plu2lnd_p1_rx_desc(plu2lnd_p1_rx_desc),
    .plu2lnd_p1_rx_desc__vld(plu2lnd_p1_rx_desc__vld),
    .lnd2plu_p1_tx_desc(lnd2plu_p1_tx_desc),
    .plu2lnd_p1s0_timer_64ns_pulse(plu2lnd_p1s0_timer_64ns_pulse),
    .plu2lnd_p1s0_symbols_32_pulse(plu2lnd_p1s0_symbols_32_pulse),
    .plu2lnd_p1s0_pcs_512_bit_time(plu2lnd_p1s0_pcs_512_bit_time),
    .plu2lnd_p1s0_counters_inc(plu2lnd_p1s0_counters_inc),
    .plu2lnd_p1s1_timer_64ns_pulse(plu2lnd_p1s1_timer_64ns_pulse),
    .plu2lnd_p1s1_symbols_32_pulse(plu2lnd_p1s1_symbols_32_pulse),
    .plu2lnd_p1s1_pcs_512_bit_time(plu2lnd_p1s1_pcs_512_bit_time),
    .plu2lnd_p1s1_counters_inc(plu2lnd_p1s1_counters_inc),
    .plu2iopl_pll(),//plu2iopl_pll),
    .iopl2plu_pll(iopl2plu_pll_feed_ioplc),
    .iopl2plu_vld00(iopl2plu_vld00_feed_ioplc),
    .iopl2plu_vld01(iopl2plu_vld01_feed_ioplc),
    .iopl2plu_vld02(iopl2plu_vld02_feed_ioplc),
    .iopl2plu_vld03(iopl2plu_vld03_feed_ioplc),
    .iopl2plu_vld10(iopl2plu_vld10_feed_ioplc),
    .iopl2plu_vld11(iopl2plu_vld11_feed_ioplc),
    .iopl2plu_vld12(iopl2plu_vld12_feed_ioplc),
    .iopl2plu_vld13(iopl2plu_vld13_feed_ioplc),
    .iopl2plu_data00(iopl2plu_data00_feed_ioplc),
    .iopl2plu_data01(iopl2plu_data01_feed_ioplc),
    .iopl2plu_data02(iopl2plu_data02_feed_ioplc),
    .iopl2plu_data03(iopl2plu_data03_feed_ioplc),
    .iopl2plu_data10(iopl2plu_data10_feed_ioplc),
    .iopl2plu_data11(iopl2plu_data11_feed_ioplc),
    .iopl2plu_data12(iopl2plu_data12_feed_ioplc),
    .iopl2plu_data13(iopl2plu_data13_feed_ioplc),
    .plu2iopl_ctrl0(),//plu2iopl_ctrl0),
    .plu2iopl_ctrl1(),//plu2iopl_ctrl1),
    .iopl2plu_ctrl0(iopl2plu_ctrl0_feed_ioplc),
    .iopl2plu_ctrl1(iopl2plu_ctrl1_feed_ioplc),
    .plu2sma_power_governor_req(),//plu2sma_power_governor_req),
    .sma2plu_power_governor_gnt(sma2plu_power_governor_gnt_feed_mcv_ccore),
    .plu2ir_phy_interrupt(),//plu2ir_phy_interrupt),
    .iopl2plu_rdy0(iopl2plu_rdy0_feed_ioplc),
    .iopl2plu_rdy1(iopl2plu_rdy1_feed_ioplc),
    .plu2iopl_data00(plu2iopl_data00),
    .plu2iopl_data01(plu2iopl_data01),
    .plu2iopl_data02(plu2iopl_data02),
    .plu2iopl_data03(plu2iopl_data03),
    .plu2iopl_data10(plu2iopl_data10),
    .plu2iopl_data11(plu2iopl_data11),
    .plu2iopl_data12(plu2iopl_data12),
    .plu2iopl_data13(plu2iopl_data13)
);

assign condor.iopl0.io2p0_data00[79:0] =  plu2iopl_data00[79:0];
assign condor.iopl0.io2p0_data01[79:0] =  plu2iopl_data01[79:0];
assign condor.iopl0.io2p0_data02[79:0] =  plu2iopl_data02[79:0];
assign condor.iopl0.io2p0_data03[79:0] =  plu2iopl_data03[79:0];
assign condor.iopl0.io2p0_data10[79:0] =  plu2iopl_data10[79:0];
assign condor.iopl0.io2p0_data11[79:0] =  plu2iopl_data11[79:0];
assign condor.iopl0.io2p0_data12[79:0] =  plu2iopl_data12[79:0];
assign condor.iopl0.io2p0_data13[79:0] =  plu2iopl_data13[79:0];

assign condor.iopl0.io2p0_vld00 =  iopl2plu_vld00_feed_ioplc;
assign condor.iopl0.io2p0_vld01 =  iopl2plu_vld01_feed_ioplc;
assign condor.iopl0.io2p0_vld02 =  iopl2plu_vld02_feed_ioplc;
assign condor.iopl0.io2p0_vld03 =  iopl2plu_vld03_feed_ioplc;
assign condor.iopl0.io2p0_vld10 =  iopl2plu_vld10_feed_ioplc;
assign condor.iopl0.io2p0_vld11 =  iopl2plu_vld11_feed_ioplc;
assign condor.iopl0.io2p0_vld12 =  iopl2plu_vld12_feed_ioplc;
assign condor.iopl0.io2p0_vld13 =  iopl2plu_vld13_feed_ioplc;

assign condor.iopl0.io2p0_rdy0 =  iopl2plu_rdy0_feed_ioplc[3:0];
assign condor.iopl0.io2p0_rdy1 =  iopl2plu_rdy1_feed_ioplc[3:0];

assign iopl2plu_data00_feed_ioplc[79:0] = condor.iopl0.p02io_data00[79:0];
assign iopl2plu_data01_feed_ioplc[79:0] = condor.iopl0.p02io_data01[79:0];
assign iopl2plu_data02_feed_ioplc[79:0] = condor.iopl0.p02io_data02[79:0];
assign iopl2plu_data03_feed_ioplc[79:0] = condor.iopl0.p02io_data03[79:0];
assign iopl2plu_data10_feed_ioplc[79:0] = condor.iopl0.p02io_data10[79:0];
assign iopl2plu_data11_feed_ioplc[79:0] = condor.iopl0.p02io_data11[79:0];
assign iopl2plu_data12_feed_ioplc[79:0] = condor.iopl0.p02io_data12[79:0];
assign iopl2plu_data13_feed_ioplc[79:0] = condor.iopl0.p02io_data13[79:0];

                                    

wire[7:0] protocol_select = 8'h04;
iopl_bfm iopl_bfm0(.clk(mcc2plu_clk), .reset(yu_feed_vcore_reset), .protocol_select(protocol_select), .rdy(iopl2plu_rdy0_feed_ioplc), .vld({iopl2plu_vld03_feed_ioplc,iopl2plu_vld02_feed_ioplc,iopl2plu_vld01_feed_ioplc,iopl2plu_vld00_feed_ioplc}));
iopl_bfm iopl_bfm1(.clk(mcc2plu_clk), .reset(yu_feed_vcore_reset), .protocol_select(protocol_select), .rdy(iopl2plu_rdy1_feed_ioplc), .vld({iopl2plu_vld13_feed_ioplc,iopl2plu_vld12_feed_ioplc,iopl2plu_vld11_feed_ioplc,iopl2plu_vld10_feed_ioplc}));


wire hrst_;
assign hrst_ = (1) ? rst_ : 1'bz;
condor condor(
.gpio({gpio[49:17],i2c_data,i2c_clk,gpio[14:0]}),
//.gpio(gpio),	//inout[49:0]
.resdft0(resdft0),	//inout
.resdft1(resdft1),	//inout
.resdft_left0(resdft_left0),	//inout
.resdft_left1(resdft_left1),	//inout
.resdft_left(resdft_left),	//inout
.resdft(resdft),	//inout
.resdft_right0(resdft_right0),	//inout
.resdft_right1(resdft_right1),	//inout
.resdft_right(resdft_right),	//inout
.tdo(tdo),	//inout
.VDDA0(VDDA0),	//inout
.VDDA1(VDDA1),	//inout
.VDDAPX(VDDAPX),	//inout
.VDDCPA(VDDCPA),	//inout
.VDDHS0(VDDHS0),	//inout
.VDDHS1(VDDHS1),	//inout
.VDDHSPX(VDDHSPX),	//inout
//.VDDIO(VDDIO),	//inout
.VDDO_000(VDDO_000),	//inout
.VDDO_001(VDDO_001),	//inout
.VDDO_010(VDDO_010),	//inout
.VDDO_011(VDDO_011),	//inout
.VDDO_020(VDDO_020),	//inout
.VDDO_021(VDDO_021),	//inout
.VDDO_030(VDDO_030),	//inout
.VDDO_031(VDDO_031),	//inout
.VDDO_040(VDDO_040),	//inout
.VDDO_041(VDDO_041),	//inout
.VDDO_050(VDDO_050),	//inout
.VDDO_051(VDDO_051),	//inout
.VDDO_060(VDDO_060),	//inout
.VDDO_061(VDDO_061),	//inout
.VDDO_070(VDDO_070),	//inout
.VDDO_071(VDDO_071),	//inout
.VDDO_100(VDDO_100),	//inout
.VDDO_101(VDDO_101),	//inout
.VDDO_110(VDDO_110),	//inout
.VDDO_111(VDDO_111),	//inout
.VDDO_120(VDDO_120),	//inout
.VDDO_121(VDDO_121),	//inout
.VDDO_130(VDDO_130),	//inout
.VDDO_131(VDDO_131),	//inout
.VDDO_140(VDDO_140),	//inout
.VDDO_141(VDDO_141),	//inout
.VDDO_150(VDDO_150),	//inout
.VDDO_151(VDDO_151),	//inout
.VDDO_160(VDDO_160),	//inout
.VDDO_161(VDDO_161),	//inout
.VDDO_170(VDDO_170),	//inout
.VDDO_171(VDDO_171),	//inout
.VDDOPX(VDDOPX),	//inout
.VDDPLL0(VDDPLL0),	//inout
.VDDPLL1(VDDPLL1),	//inout
.VDDPLLPX(VDDPLLPX),	//inout
//.VQPS(VQPS),	//inout
.VSSCPA(VSSCPA),	//inout
.VSSHS0(VSSHS0),	//inout
.VSSHS1(VSSHS1),	//inout
.VSSHSPX(VSSHSPX),	//inout
.VSSPLL0(VSSPLL0),	//inout
.VSSPLL1(VSSPLL1),	//inout
.VSSPLLPX(VSSPLLPX),	//inout
.cclk(cclk),	//wire
.funcmode(funcmode),	//input
.rck0pxn(rck0pxn),	//input
.rck0pxp(rck0pxp),	//input
.rck1pxn(rck1pxn),	//input
.rck1pxp(rck1pxp),	//input
.rckn00(rckn00),	//input
.rckn01(rckn01),	//input
.rckn10(rckn10),	//input
.rckn11(rckn11),	//input
.rckp00(rckp00),	//input
.rckp01(rckp01),	//input
.rckp10(rckp10),	//input
.rckp11(rckp11),	//input
.ri0000n(ri0000n),	//input
.ri0000p(ri0000p),	//input
.ri0001n(ri0001n),	//input
.ri0001p(ri0001p),	//input
.ri0002n(ri0002n),	//input
.ri0002p(ri0002p),	//input
.ri0003n(ri0003n),	//input
.ri0003p(ri0003p),	//input
.ri0010n(ri0010n),	//input
.ri0010p(ri0010p),	//input
.ri0011n(ri0011n),	//input
.ri0011p(ri0011p),	//input
.ri0012n(ri0012n),	//input
.ri0012p(ri0012p),	//input
.ri0013n(ri0013n),	//input
.ri0013p(ri0013p),	//input
.ri0100n(ri0100n),	//input
.ri0100p(ri0100p),	//input
.ri0101n(ri0101n),	//input
.ri0101p(ri0101p),	//input
.ri0102n(ri0102n),	//input
.ri0102p(ri0102p),	//input
.ri0103n(ri0103n),	//input
.ri0103p(ri0103p),	//input
.ri0110n(ri0110n),	//input
.ri0110p(ri0110p),	//input
.ri0111n(ri0111n),	//input
.ri0111p(ri0111p),	//input
.ri0112n(ri0112n),	//input
.ri0112p(ri0112p),	//input
.ri0113n(ri0113n),	//input
.ri0113p(ri0113p),	//input
.ri0200n(ri0200n),	//input
.ri0200p(ri0200p),	//input
.ri0201n(ri0201n),	//input
.ri0201p(ri0201p),	//input
.ri0202n(ri0202n),	//input
.ri0202p(ri0202p),	//input
.ri0203n(ri0203n),	//input
.ri0203p(ri0203p),	//input
.ri0210n(ri0210n),	//input
.ri0210p(ri0210p),	//input
.ri0211n(ri0211n),	//input
.ri0211p(ri0211p),	//input
.ri0212n(ri0212n),	//input
.ri0212p(ri0212p),	//input
.ri0213n(ri0213n),	//input
.ri0213p(ri0213p),	//input
.ri0300n(ri0300n),	//input
.ri0300p(ri0300p),	//input
.ri0301n(ri0301n),	//input
.ri0301p(ri0301p),	//input
.ri0302n(ri0302n),	//input
.ri0302p(ri0302p),	//input
.ri0303n(ri0303n),	//input
.ri0303p(ri0303p),	//input
.ri0310n(ri0310n),	//input
.ri0310p(ri0310p),	//input
.ri0311n(ri0311n),	//input
.ri0311p(ri0311p),	//input
.ri0312n(ri0312n),	//input
.ri0312p(ri0312p),	//input
.ri0313n(ri0313n),	//input
.ri0313p(ri0313p),	//input
.ri0400n(ri0400n),	//input
.ri0400p(ri0400p),	//input
.ri0401n(ri0401n),	//input
.ri0401p(ri0401p),	//input
.ri0402n(ri0402n),	//input
.ri0402p(ri0402p),	//input
.ri0403n(ri0403n),	//input
.ri0403p(ri0403p),	//input
.ri0410n(ri0410n),	//input
.ri0410p(ri0410p),	//input
.ri0411n(ri0411n),	//input
.ri0411p(ri0411p),	//input
.ri0412n(ri0412n),	//input
.ri0412p(ri0412p),	//input
.ri0413n(ri0413n),	//input
.ri0413p(ri0413p),	//input
.ri0500n(ri0500n),	//input
.ri0500p(ri0500p),	//input
.ri0501n(ri0501n),	//input
.ri0501p(ri0501p),	//input
.ri0502n(ri0502n),	//input
.ri0502p(ri0502p),	//input
.ri0503n(ri0503n),	//input
.ri0503p(ri0503p),	//input
.ri0510n(ri0510n),	//input
.ri0510p(ri0510p),	//input
.ri0511n(ri0511n),	//input
.ri0511p(ri0511p),	//input
.ri0512n(ri0512n),	//input
.ri0512p(ri0512p),	//input
.ri0513n(ri0513n),	//input
.ri0513p(ri0513p),	//input
.ri0600n(ri0600n),	//input
.ri0600p(ri0600p),	//input
.ri0601n(ri0601n),	//input
.ri0601p(ri0601p),	//input
.ri0602n(ri0602n),	//input
.ri0602p(ri0602p),	//input
.ri0603n(ri0603n),	//input
.ri0603p(ri0603p),	//input
.ri0610n(ri0610n),	//input
.ri0610p(ri0610p),	//input
.ri0611n(ri0611n),	//input
.ri0611p(ri0611p),	//input
.ri0612n(ri0612n),	//input
.ri0612p(ri0612p),	//input
.ri0613n(ri0613n),	//input
.ri0613p(ri0613p),	//input
.ri0700n(ri0700n),	//input
.ri0700p(ri0700p),	//input
.ri0701n(ri0701n),	//input
.ri0701p(ri0701p),	//input
.ri0702n(ri0702n),	//input
.ri0702p(ri0702p),	//input
.ri0703n(ri0703n),	//input
.ri0703p(ri0703p),	//input
.ri0710n(ri0710n),	//input
.ri0710p(ri0710p),	//input
.ri0711n(ri0711n),	//input
.ri0711p(ri0711p),	//input
.ri0712n(ri0712n),	//input
.ri0712p(ri0712p),	//input
.ri0713n(ri0713n),	//input
.ri0713p(ri0713p),	//input
.ri1000n(ri1000n),	//input
.ri1000p(ri1000p),	//input
.ri1001n(ri1001n),	//input
.ri1001p(ri1001p),	//input
.ri1002n(ri1002n),	//input
.ri1002p(ri1002p),	//input
.ri1003n(ri1003n),	//input
.ri1003p(ri1003p),	//input
.ri1010n(ri1010n),	//input
.ri1010p(ri1010p),	//input
.ri1011n(ri1011n),	//input
.ri1011p(ri1011p),	//input
.ri1012n(ri1012n),	//input
.ri1012p(ri1012p),	//input
.ri1013n(ri1013n),	//input
.ri1013p(ri1013p),	//input
.ri1100n(ri1100n),	//input
.ri1100p(ri1100p),	//input
.ri1101n(ri1101n),	//input
.ri1101p(ri1101p),	//input
.ri1102n(ri1102n),	//input
.ri1102p(ri1102p),	//input
.ri1103n(ri1103n),	//input
.ri1103p(ri1103p),	//input
.ri1110n(ri1110n),	//input
.ri1110p(ri1110p),	//input
.ri1111n(ri1111n),	//input
.ri1111p(ri1111p),	//input
.ri1112n(ri1112n),	//input
.ri1112p(ri1112p),	//input
.ri1113n(ri1113n),	//input
.ri1113p(ri1113p),	//input
.ri1200n(ri1200n),	//input
.ri1200p(ri1200p),	//input
.ri1201n(ri1201n),	//input
.ri1201p(ri1201p),	//input
.ri1202n(ri1202n),	//input
.ri1202p(ri1202p),	//input
.ri1203n(ri1203n),	//input
.ri1203p(ri1203p),	//input
.ri1210n(ri1210n),	//input
.ri1210p(ri1210p),	//input
.ri1211n(ri1211n),	//input
.ri1211p(ri1211p),	//input
.ri1212n(ri1212n),	//input
.ri1212p(ri1212p),	//input
.ri1213n(ri1213n),	//input
.ri1213p(ri1213p),	//input
.ri1300n(ri1300n),	//input
.ri1300p(ri1300p),	//input
.ri1301n(ri1301n),	//input
.ri1301p(ri1301p),	//input
.ri1302n(ri1302n),	//input
.ri1302p(ri1302p),	//input
.ri1303n(ri1303n),	//input
.ri1303p(ri1303p),	//input
.ri1310n(ri1310n),	//input
.ri1310p(ri1310p),	//input
.ri1311n(ri1311n),	//input
.ri1311p(ri1311p),	//input
.ri1312n(ri1312n),	//input
.ri1312p(ri1312p),	//input
.ri1313n(ri1313n),	//input
.ri1313p(ri1313p),	//input
.ri1400n(ri1400n),	//input
.ri1400p(ri1400p),	//input
.ri1401n(ri1401n),	//input
.ri1401p(ri1401p),	//input
.ri1402n(ri1402n),	//input
.ri1402p(ri1402p),	//input
.ri1403n(ri1403n),	//input
.ri1403p(ri1403p),	//input
.ri1410n(ri1410n),	//input
.ri1410p(ri1410p),	//input
.ri1411n(ri1411n),	//input
.ri1411p(ri1411p),	//input
.ri1412n(ri1412n),	//input
.ri1412p(ri1412p),	//input
.ri1413n(ri1413n),	//input
.ri1413p(ri1413p),	//input
.ri1500n(ri1500n),	//input
.ri1500p(ri1500p),	//input
.ri1501n(ri1501n),	//input
.ri1501p(ri1501p),	//input
.ri1502n(ri1502n),	//input
.ri1502p(ri1502p),	//input
.ri1503n(ri1503n),	//input
.ri1503p(ri1503p),	//input
.ri1510n(ri1510n),	//input
.ri1510p(ri1510p),	//input
.ri1511n(ri1511n),	//input
.ri1511p(ri1511p),	//input
.ri1512n(ri1512n),	//input
.ri1512p(ri1512p),	//input
.ri1513n(ri1513n),	//input
.ri1513p(ri1513p),	//input
.ri1600n(ri1600n),	//input
.ri1600p(ri1600p),	//input
.ri1601n(ri1601n),	//input
.ri1601p(ri1601p),	//input
.ri1602n(ri1602n),	//input
.ri1602p(ri1602p),	//input
.ri1603n(ri1603n),	//input
.ri1603p(ri1603p),	//input
.ri1610n(ri1610n),	//input
.ri1610p(ri1610p),	//input
.ri1611n(ri1611n),	//input
.ri1611p(ri1611p),	//input
.ri1612n(ri1612n),	//input
.ri1612p(ri1612p),	//input
.ri1613n(ri1613n),	//input
.ri1613p(ri1613p),	//input
.ri1700n(ri1700n),	//input
.ri1700p(ri1700p),	//input
.ri1701n(ri1701n),	//input
.ri1701p(ri1701p),	//input
.ri1702n(ri1702n),	//input
.ri1702p(ri1702p),	//input
.ri1703n(ri1703n),	//input
.ri1703p(ri1703p),	//input
.ri1710n(ri1710n),	//input
.ri1710p(ri1710p),	//input
.ri1711n(ri1711n),	//input
.ri1711p(ri1711p),	//input
.ri1712n(ri1712n),	//input
.ri1712p(ri1712p),	//input
.ri1713n(ri1713n),	//input
.ri1713p(ri1713p),	//input
.rpxn(rpxn),	//input[3:0]
.rpxp(rpxp),	//input[3:0]
.rst_(hrst_),	//input
.tck(tck),	//input
.tdi(tdi),	//input
.tms(tms),	//input
.trst_(trst_),	//input
.VDDTD(VDDTD),	//input
//.VDDTD_LBK(VDDTD_LBK),	//input
.VDDTD_LBL(VDDTD_LBL),	//input
.VDDTD_LBM(VDDTD_LBM),	//input
.VDDTD_LBR(VDDTD_LBR),	//input
.VDDTD_LBT(VDDTD_LBT),	//input
.VDDTD_LBV(VDDTD_LBV),	//input
.VDD(VDD),	//input
.VSS(VSS),	//input
.prbg0(prbg0),	//output
.prbg1(prbg1),	//output
.prbp0(prbp0),	//output
.prbp1(prbp1),	//output
.rck0px_cm(rck0px_cm),	//output
.rck1px_cm(rck1px_cm),	//output
.rck_cm00(rck_cm00),	//output
.rck_cm01(rck_cm01),	//output
.rck_cm10(rck_cm10),	//output
.rck_cm11(rck_cm11),	//output
.ti0000n(ti0000n),	//output
.ti0000p(ti0000p),	//output
.ti0001n(ti0001n),	//output
.ti0001p(ti0001p),	//output
.ti0002n(ti0002n),	//output
.ti0002p(ti0002p),	//output
.ti0003n(ti0003n),	//output
.ti0003p(ti0003p),	//output
.ti0010n(ti0010n),	//output
.ti0010p(ti0010p),	//output
.ti0011n(ti0011n),	//output
.ti0011p(ti0011p),	//output
.ti0012n(ti0012n),	//output
.ti0012p(ti0012p),	//output
.ti0013n(ti0013n),	//output
.ti0013p(ti0013p),	//output
.ti0100n(ti0100n),	//output
.ti0100p(ti0100p),	//output
.ti0101n(ti0101n),	//output
.ti0101p(ti0101p),	//output
.ti0102n(ti0102n),	//output
.ti0102p(ti0102p),	//output
.ti0103n(ti0103n),	//output
.ti0103p(ti0103p),	//output
.ti0110n(ti0110n),	//output
.ti0110p(ti0110p),	//output
.ti0111n(ti0111n),	//output
.ti0111p(ti0111p),	//output
.ti0112n(ti0112n),	//output
.ti0112p(ti0112p),	//output
.ti0113n(ti0113n),	//output
.ti0113p(ti0113p),	//output
.ti0200n(ti0200n),	//output
.ti0200p(ti0200p),	//output
.ti0201n(ti0201n),	//output
.ti0201p(ti0201p),	//output
.ti0202n(ti0202n),	//output
.ti0202p(ti0202p),	//output
.ti0203n(ti0203n),	//output
.ti0203p(ti0203p),	//output
.ti0210n(ti0210n),	//output
.ti0210p(ti0210p),	//output
.ti0211n(ti0211n),	//output
.ti0211p(ti0211p),	//output
.ti0212n(ti0212n),	//output
.ti0212p(ti0212p),	//output
.ti0213n(ti0213n),	//output
.ti0213p(ti0213p),	//output
.ti0300n(ti0300n),	//output
.ti0300p(ti0300p),	//output
.ti0301n(ti0301n),	//output
.ti0301p(ti0301p),	//output
.ti0302n(ti0302n),	//output
.ti0302p(ti0302p),	//output
.ti0303n(ti0303n),	//output
.ti0303p(ti0303p),	//output
.ti0310n(ti0310n),	//output
.ti0310p(ti0310p),	//output
.ti0311n(ti0311n),	//output
.ti0311p(ti0311p),	//output
.ti0312n(ti0312n),	//output
.ti0312p(ti0312p),	//output
.ti0313n(ti0313n),	//output
.ti0313p(ti0313p),	//output
.ti0400n(ti0400n),	//output
.ti0400p(ti0400p),	//output
.ti0401n(ti0401n),	//output
.ti0401p(ti0401p),	//output
.ti0402n(ti0402n),	//output
.ti0402p(ti0402p),	//output
.ti0403n(ti0403n),	//output
.ti0403p(ti0403p),	//output
.ti0410n(ti0410n),	//output
.ti0410p(ti0410p),	//output
.ti0411n(ti0411n),	//output
.ti0411p(ti0411p),	//output
.ti0412n(ti0412n),	//output
.ti0412p(ti0412p),	//output
.ti0413n(ti0413n),	//output
.ti0413p(ti0413p),	//output
.ti0500n(ti0500n),	//output
.ti0500p(ti0500p),	//output
.ti0501n(ti0501n),	//output
.ti0501p(ti0501p),	//output
.ti0502n(ti0502n),	//output
.ti0502p(ti0502p),	//output
.ti0503n(ti0503n),	//output
.ti0503p(ti0503p),	//output
.ti0510n(ti0510n),	//output
.ti0510p(ti0510p),	//output
.ti0511n(ti0511n),	//output
.ti0511p(ti0511p),	//output
.ti0512n(ti0512n),	//output
.ti0512p(ti0512p),	//output
.ti0513n(ti0513n),	//output
.ti0513p(ti0513p),	//output
.ti0600n(ti0600n),	//output
.ti0600p(ti0600p),	//output
.ti0601n(ti0601n),	//output
.ti0601p(ti0601p),	//output
.ti0602n(ti0602n),	//output
.ti0602p(ti0602p),	//output
.ti0603n(ti0603n),	//output
.ti0603p(ti0603p),	//output
.ti0610n(ti0610n),	//output
.ti0610p(ti0610p),	//output
.ti0611n(ti0611n),	//output
.ti0611p(ti0611p),	//output
.ti0612n(ti0612n),	//output
.ti0612p(ti0612p),	//output
.ti0613n(ti0613n),	//output
.ti0613p(ti0613p),	//output
.ti0700n(ti0700n),	//output
.ti0700p(ti0700p),	//output
.ti0701n(ti0701n),	//output
.ti0701p(ti0701p),	//output
.ti0702n(ti0702n),	//output
.ti0702p(ti0702p),	//output
.ti0703n(ti0703n),	//output
.ti0703p(ti0703p),	//output
.ti0710n(ti0710n),	//output
.ti0710p(ti0710p),	//output
.ti0711n(ti0711n),	//output
.ti0711p(ti0711p),	//output
.ti0712n(ti0712n),	//output
.ti0712p(ti0712p),	//output
.ti0713n(ti0713n),	//output
.ti0713p(ti0713p),	//output
.ti1000n(ti1000n),	//output
.ti1000p(ti1000p),	//output
.ti1001n(ti1001n),	//output
.ti1001p(ti1001p),	//output
.ti1002n(ti1002n),	//output
.ti1002p(ti1002p),	//output
.ti1003n(ti1003n),	//output
.ti1003p(ti1003p),	//output
.ti1010n(ti1010n),	//output
.ti1010p(ti1010p),	//output
.ti1011n(ti1011n),	//output
.ti1011p(ti1011p),	//output
.ti1012n(ti1012n),	//output
.ti1012p(ti1012p),	//output
.ti1013n(ti1013n),	//output
.ti1013p(ti1013p),	//output
.ti1100n(ti1100n),	//output
.ti1100p(ti1100p),	//output
.ti1101n(ti1101n),	//output
.ti1101p(ti1101p),	//output
.ti1102n(ti1102n),	//output
.ti1102p(ti1102p),	//output
.ti1103n(ti1103n),	//output
.ti1103p(ti1103p),	//output
.ti1110n(ti1110n),	//output
.ti1110p(ti1110p),	//output
.ti1111n(ti1111n),	//output
.ti1111p(ti1111p),	//output
.ti1112n(ti1112n),	//output
.ti1112p(ti1112p),	//output
.ti1113n(ti1113n),	//output
.ti1113p(ti1113p),	//output
.ti1200n(ti1200n),	//output
.ti1200p(ti1200p),	//output
.ti1201n(ti1201n),	//output
.ti1201p(ti1201p),	//output
.ti1202n(ti1202n),	//output
.ti1202p(ti1202p),	//output
.ti1203n(ti1203n),	//output
.ti1203p(ti1203p),	//output
.ti1210n(ti1210n),	//output
.ti1210p(ti1210p),	//output
.ti1211n(ti1211n),	//output
.ti1211p(ti1211p),	//output
.ti1212n(ti1212n),	//output
.ti1212p(ti1212p),	//output
.ti1213n(ti1213n),	//output
.ti1213p(ti1213p),	//output
.ti1300n(ti1300n),	//output
.ti1300p(ti1300p),	//output
.ti1301n(ti1301n),	//output
.ti1301p(ti1301p),	//output
.ti1302n(ti1302n),	//output
.ti1302p(ti1302p),	//output
.ti1303n(ti1303n),	//output
.ti1303p(ti1303p),	//output
.ti1310n(ti1310n),	//output
.ti1310p(ti1310p),	//output
.ti1311n(ti1311n),	//output
.ti1311p(ti1311p),	//output
.ti1312n(ti1312n),	//output
.ti1312p(ti1312p),	//output
.ti1313n(ti1313n),	//output
.ti1313p(ti1313p),	//output
.ti1400n(ti1400n),	//output
.ti1400p(ti1400p),	//output
.ti1401n(ti1401n),	//output
.ti1401p(ti1401p),	//output
.ti1402n(ti1402n),	//output
.ti1402p(ti1402p),	//output
.ti1403n(ti1403n),	//output
.ti1403p(ti1403p),	//output
.ti1410n(ti1410n),	//output
.ti1410p(ti1410p),	//output
.ti1411n(ti1411n),	//output
.ti1411p(ti1411p),	//output
.ti1412n(ti1412n),	//output
.ti1412p(ti1412p),	//output
.ti1413n(ti1413n),	//output
.ti1413p(ti1413p),	//output
.ti1500n(ti1500n),	//output
.ti1500p(ti1500p),	//output
.ti1501n(ti1501n),	//output
.ti1501p(ti1501p),	//output
.ti1502n(ti1502n),	//output
.ti1502p(ti1502p),	//output
.ti1503n(ti1503n),	//output
.ti1503p(ti1503p),	//output
.ti1510n(ti1510n),	//output
.ti1510p(ti1510p),	//output
.ti1511n(ti1511n),	//output
.ti1511p(ti1511p),	//output
.ti1512n(ti1512n),	//output
.ti1512p(ti1512p),	//output
.ti1513n(ti1513n),	//output
.ti1513p(ti1513p),	//output
.ti1600n(ti1600n),	//output
.ti1600p(ti1600p),	//output
.ti1601n(ti1601n),	//output
.ti1601p(ti1601p),	//output
.ti1602n(ti1602n),	//output
.ti1602p(ti1602p),	//output
.ti1603n(ti1603n),	//output
.ti1603p(ti1603p),	//output
.ti1610n(ti1610n),	//output
.ti1610p(ti1610p),	//output
.ti1611n(ti1611n),	//output
.ti1611p(ti1611p),	//output
.ti1612n(ti1612n),	//output
.ti1612p(ti1612p),	//output
.ti1613n(ti1613n),	//output
.ti1613p(ti1613p),	//output
.ti1700n(ti1700n),	//output
.ti1700p(ti1700p),	//output
.ti1701n(ti1701n),	//output
.ti1701p(ti1701p),	//output
.ti1702n(ti1702n),	//output
.ti1702p(ti1702p),	//output
.ti1703n(ti1703n),	//output
.ti1703p(ti1703p),	//output
.ti1710n(ti1710n),	//output
.ti1710p(ti1710p),	//output
.ti1711n(ti1711n),	//output
.ti1711p(ti1711p),	//output
.ti1712n(ti1712n),	//output
.ti1712p(ti1712p),	//output
.ti1713n(ti1713n),	//output
.ti1713p(ti1713p),	//output
.tpxn(tpxn),	//output[3:0]
.tpxp(tpxp)	//output[3:0]
);

endmodule
