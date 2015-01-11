##!/usr/local/bin/csh
date
cp ../scripts/compile/* .
echo MELLANOX_STAGE I Yaron environment vlan  
vlan -sv -f compile_inputs.tcl +rtlCommentPragma +tran_relax -l Vlan_comp.log
if($?) then 
	echo Error on Vlan
	exit 1
endif
date  
echo MELLANOX_STAGE III ixcom synthsis 
#ixcom -top dut -top specman_hdl_ref -ua +dut+dut+specman_hdl_ref +xcDesignTop+top.dut=dut +tbcnba +ignoreNCVerCheck -timescale 100ps/100ps -target hdlice -log ixcom_synt.log +tran_relax +targetTop+dut +1xua
#ixcom -top dut -top specman_hdl_ref -ua +dut+dut+specman_hdl_ref +xcDesignTop+top.dut=dut +ignoreNCVerCheck -timescale 100ps/100ps -target hdlice -log ixcom_synt.log +tran_relax +targetTop+dut +1xua
ixcom -top dut -top specman_hdl_ref -ua +dut+dut+specman_hdl_ref +ignoreNCVerCheck -timescale 100ps/100ps -target hdlice -log ixcom_synt.log +tran_relax +targetTop+dut +1xua
if($?) then 
	echo Error on Ixcom synthsis
	exit 1
endif
date  
echo MELLANOX_STAGE III ixcom compilation  
ixcom -xecompile compilerOptions=compilerOptions.qel +targetTop+dut -log ixcom_comp.log +ignoreNCVerCheck -target xecompile
if($?) then 
	echo Error on Ixcom compilation 
	exit 1
endif
date  
echo MELLANOX_STAGE IV irun  
irun -c ${ORGDIR}/verilog/top.v patch.e -f xc_work/irun.f -sntimescale 100ps/100ps -timescale 100ps/100ps -top top -sv -clean
if($?) then 
	echo Error on irun
	exit 1
endif
