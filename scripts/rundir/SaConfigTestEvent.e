<'
    
extend sys {
   run() is also {
      messagef(MEDIUM,"Start InitSaConfig");
      messagef(MEDIUM,"End Start InitSaConfig");
      start StartSaConfig();
   };


   StartSaConfig()@sys.any is {
     'top.dut.test_regs.none0' = 32'h00000600;
     'top.dut.test_regs.Oclk0' = 32'h00000500;
     'top.dut.test_regs.CaR0' = 32'h00000400;
     'top.dut.test_regs.none1' = 32'h00000300;
     'top.dut.test_regs.Oclk1' = 32'h00000200;
     'top.dut.test_regs.CaR1' = 32'h00000100;
   	wait @sys.config_done$;
     'top.dut.test_regs.none0' = 32'h00001000;
     'top.dut.test_regs.Oclk0' = 32'h00000600;
     'top.dut.test_regs.CaR0' =  32'h00000500;
     'top.dut.test_regs.none1' = 32'h00001000;
     'top.dut.test_regs.Oclk1' = 32'h00000300;
     'top.dut.test_regs.CaR1' =  32'h00000200;
	};

   comper0test()@sys.any is {
   	wait @sys.comper0_env$;
     'top.dut.test_regs.none0' = 32'h00002000;
     'top.dut.test_regs.Oclk0' = 32'h00001800;
     'top.dut.test_regs.CaR0' =  32'h00001900;
     'top.dut.test_regs.none1' = 32'h00002000;
     'top.dut.test_regs.Oclk1' = 32'h00001700;
     'top.dut.test_regs.CaR1' =  32'h00001600;
	};
   comper1test()@sys.any is {
   	wait @sys.comper1_env$;
     'top.dut.test_regs.none0' = 32'h00003000;
     'top.dut.test_regs.Oclk0' = 32'h00002800;
     'top.dut.test_regs.CaR0' =  32'h00002900;
     'top.dut.test_regs.none1' = 32'h00003000;
     'top.dut.test_regs.Oclk1' = 32'h00002700;
     'top.dut.test_regs.CaR1' =  32'h00002600;
   	};
   comper00test()@sys.any is {
   	wait @sys.comper00_env$;
     'top.dut.test_regs.none0' = 32'h01002000;
     'top.dut.test_regs.Oclk0' = 32'h01001800;
     'top.dut.test_regs.CaR0' =  32'h01001900;
     'top.dut.test_regs.none1' = 32'h01002000;
     'top.dut.test_regs.Oclk1' = 32'h01001700;
     'top.dut.test_regs.CaR1' =  32'h01001600;
	};
   comper11test()@sys.any is {
   	wait @sys.comper11_env$;
     'top.dut.test_regs.none0' = 32'h02003000;
     'top.dut.test_regs.Oclk0' = 32'h02002800;
     'top.dut.test_regs.CaR0' =  32'h02002900;
     'top.dut.test_regs.none1' = 32'h02003000;
     'top.dut.test_regs.Oclk1' = 32'h02002700;
     'top.dut.test_regs.CaR1' =  32'h02002600;
   	};
};
    
'>
    
