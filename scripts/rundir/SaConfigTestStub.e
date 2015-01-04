<'
    define SCT_ARRAY_SIZE  64;
    type  MemConfigLine : uint(bits:85);
    
extend sys {
   run() is also {
      start StartSaConfig();
   };

   InitSaConfig()@sys.any is {
   out ("InitSaConfig");
      var MemConfigArray : list of string;
      var MemIndex : int = 0;

   	for each line in file "crspace.txt" {
	 MemConfigArray.add(it);
	 MemIndex = MemIndex + 1;
         if (MemIndex == SCT_ARRAY_SIZE){
            out("Start Config file number %d",index);
            WriteToFile(MemConfigArray);
            'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.conf_size_reg' = MemIndex-1;
            'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.start' = 1'b1;
            MemIndex = 0;
            MemConfigArray.resize(0);
            wait @sys.mem_config_done$;
            out("End Config file number %d",index);
         };		// write full array file
       };	// load next array
      out("last Config file");
      WriteToFile(MemConfigArray);
      'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.conf_size_reg' = MemIndex-1;
      MemIndex = 0;
      MemConfigArray.resize(0);
      wait @sys.mem_config_done$;
      outf("last Config file - mem_config_done");
      'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.start' = 1'b0;
   };


   WriteToFile(DataTobeWritenToFile : list of string) is {
            var FileOut: file;
               FileOut = files.open("NewConfigMem.txt", "w", "WriteTextFile");
	    for each in DataTobeWritenToFile {
               files.write(FileOut,it);             
	       };
               files.close(FileOut);
    };  


   StartSaConfig()@sys.any is {
   out("start method");
   wait @sys.config_done$;
   out("rst_ is up");
   wait @sys.yu_reset_event$;
   out("yu_reset is down");
   start InitSaConfig();
   };






};
    
'>
    
