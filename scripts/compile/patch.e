<'
import patch_empty_hdl_ref.e;

extend sys {
  reset_done : in event_port is instance;
//     keep reset_done.hdl_path() == "top.dut.reset";
     keep reset_done.hdl_path() == "dut.reset";
     keep reset_done.edge() == fall;
     keep bind(reset_done, external);

  memoryLoadDone : in event_port is instance;
//     keep memoryLoadDone.hdl_path() == "top.dut.done";
     keep memoryLoadDone.hdl_path() == "dut.done";
     keep memoryLoadDone.edge() == rise;
     keep bind(memoryLoadDone, external);
	};
   

'>
    
    
