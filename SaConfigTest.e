<'
    define SCT_ARRAY_SIZE  64;
    
extend sys {
   run() is also {
      out("run is also - before Start InitSaConfig");
      start StartSaConfig();
   };


   InitSaConfig()@sys.any is {
      var MemConfigArray : list of string;
      var MemIndex : int = 0;
      var lineList : list of string;
      var addrList : list of string;
      var dataList : list of string;
      var stringNum : string;
      var addr : int;
      var data : int;
      var crbus : uint(bits:53);
      out("Start InitSaConfig");
      for each line in file "crspace.txt" {
	 MemConfigArray.add(it);
	 MemIndex = MemIndex + 1;
         if (MemIndex == SCT_ARRAY_SIZE){
            outf("Start Config file number %d\n",index/64);
            WriteToFile(MemConfigArray);
            MemIndex = 0;
            MemConfigArray.resize(0);
            'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.conf_size_reg' = MemIndex-1;
            'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.start' = 1'b1;
            wait @sys.mem_config_done$;
            outf("End Config file number %d\n",index);
         };		// write full array file
      };	// load next array
      out("last Config file");
      WriteToFile(MemConfigArray);
      'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.conf_size_reg' = MemIndex-1;
      MemIndex = 0;
      MemConfigArray.resize(0);
      wait @sys.mem_config_done$;
      outf("last Config file - mem_config_done\n");
      'top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.start' = 1'b0;
      out("InitSaConfig - config Done");
   };// write full array file
   
  
   WriteToFile(DataTobeWritenToFile : list of string) is {
            var FileOut: file;
               FileOut = files.open("NewConfigMem.txt", "w", "WriteTextFile");
	    for each in DataTobeWritenToFile {
               files.write(FileOut,it);             
	       };
               files.close(FileOut);
	};  
   StartSaConfig()@sys.any is {
      out("Start StartSaConfig");
      wait @sys.config_done$; 
      out("StartSaConfig - after sys.config_done");
      wait @sys.yu_reset_event$;
      out("StartSaConfig - after yu_reset_event");
      InitSaConfig();
      out("StartSaConfig - after chip_config_done");
   wait;
   };
};
    
'>
    
