<'
import patch_empty_hdl_ref.e;

extend sys {
  config_done : in event_port is instance;
     keep config_done.hdl_path() == "top.dut.rst_";
     keep config_done.edge() == rise;
     keep bind(config_done, external);

  mem_config_done : in event_port is instance;
     keep mem_config_done.hdl_path() == "top.dut.condor.mcore.score.yu.yu_ser_port0.yu_ser_slave.pd_mem2cr.done";
     keep mem_config_done.edge() == rise;
     keep bind(mem_config_done, external);

  yu_reset_event : in event_port is instance;
     keep yu_reset_event.hdl_path() == "top.dut.condor.mcore.score.yu_reset";
     keep yu_reset_event.edge() == fall;
     keep bind(yu_reset_event, external);
   
   phy_linkup_port0 : in event_port is instance;
     keep phy_linkup_port0.hdl_path() == "top.dut.condor.mcore.cport0.plu.plu2lnd_p0s0_phy_linkup";
     keep phy_linkup_port0.edge() == fall;
     keep bind(phy_linkup_port0, external);

  idel_event : in event_port is instance;
     keep idel_event.hdl_path() == "top.dut.idel_stat_event";
     keep idel_event.edge() == rise;
     keep bind(idel_event, external);
   
  reset_event : in event_port is instance;
     keep reset_event.hdl_path() == "top.dut.reset_stat_event";
     keep reset_event.edge() == rise;
     keep bind(reset_event, external);
   
  init_event : in event_port is instance;
     keep init_event.hdl_path() == "top.dut.init_stat_event";
     keep init_event.edge() == rise;
     keep bind(init_event, external);
   
  run_event : in event_port is instance;
     keep run_event.hdl_path() == "top.dut.run_stat_event";
     keep run_event.edge() == rise;
     keep bind(run_event, external);
   
	};
   

'>
    
    
