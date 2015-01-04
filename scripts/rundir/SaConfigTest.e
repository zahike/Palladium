<'
    
extend sys {
   run() is also {
      out("Start Test");
//      'top.dut.start' = 1'b0;
      'dut.start' = 1'b0;
       WriteToFile();
       start StartSaConfig();
   };

   WriteToFile() is {
      out("Start WriteToFile");
            var FileOut: file;
	    var temp : uint(bits:32);
               FileOut = files.open("DataIn.txt", "w", "WriteTextFile");
	    for i from 0 to 63 {
	       temp = i;
               files.write(FileOut,temp.as_a(string));             
	       };
               files.close(FileOut);
    };  

   ReadNewData()@sys.any is {;
   var addData : uint(bits:32);
      out("Start ReadNewData");
      out("wait For data file");
      wait @sys.memoryLoadDone$;
//      addData = 'top.dut.addResolt';
      addData = 'dut.addResolt';
      outf("The collection of all is: %08x\n",addData);
      out("Data file");
   	for each line in file "DataOut.txt" {
      		outf("Data Num: %d %s\n",index,it);
      		};	// load next array
	};
	
   StartSaConfig()@sys.any is {
      out("Start StartSaConfig");
      wait @sys.reset_done$;
//      'top.dut.start' = 1'b1;
      'dut.start' = 1'b1;
      start ReadNewData();
	};

};
    
'>
    
