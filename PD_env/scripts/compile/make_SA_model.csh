##!/usr/local/bin/csh
date
cp ../scripts/compile/* .
echo MELLANOX_STAGE I Yaron environment vlan  
vlan -sv -f compile_inputs.tcl +rtlCommentPragma +tran_relax -l Vlan_compile.log
if($?) then 
	echo Error on Vlan
	exit 1
endif
date  
echo MELLANOX_STAGE II new environment vlan  
vlan -sv -f verilog_inputs.tcl +rtlCommentPragma +tran_relax -l Vlan_verilog.log
if($?) then 
	echo Error in new environment 
	exit 1
endif
date  
echo MELLANOX_STAGE III ixcom synthsis 
ixcom -top external_bfms -top specman_hdl_ref -ua +dut+external_bfms+specman_hdl_ref +xcDesignTop+top.dut=external_bfms +ignoreNCVerCheck -timescale 100ps/100ps -target hdlice -log ixcom_synt.log +tran_relax +targetTop+external_bfms +1xua
if($?) then 
	echo Error on Ixcom synthsis
	exit 1
endif
date  
echo MELLANOX_STAGE III ixcom compilation  
ixcom -xecompile compilerOptions=compilerOptions.qel +targetTop+external_bfms -log ixcom_comp.log +ignoreNCVerCheck -target xecompile
if($?) then 
	echo Error on Ixcom compilation 
	exit 1
endif
date  
echo MELLANOX_STAGE IV irun  
irun -c ../verilog/top.v patch.e -f xc_work/irun.f -sntimescale 100ps/100ps -timescale 100ps/100ps -top top -sv -clean
if($?) then 
	echo Error on irun
	exit 1
endif
