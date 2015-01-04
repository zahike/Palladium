
sn restore
sn config mem -disable_disk_based_gc=TRUE
sn config mem -notify_gc_settings=TRUE
sn config print -radix=hex
sn config print -line_size=5000
sn config print -list_starts_on_right=FALSE
sn config simulation -enable_ports_unification=TRUE
sn config simulation -resize_mvl_list=TRUE
sn config generation -default_list_size_policy=NONE
sn config generation -default_max_list_size=500000
sn config generation -default_min_list_size=0
sn config generation -absolute_max_list_size=500000
sn config misc -compilation_errors_num=30
sn config ies -log_to_sim=log
sn config ies -sync_reset=reload
sn config cover -max_int_buckets=256
sn config generation -default_max_list_size=0
sn config generation -default_max_list_size=0
sn config generation -default_max_list_size=0
sn config memory -optimal_process_size=50000M
sn config cover -mode=off
sn set notify -severity = IGNORE WARN_NO_ACTIVE_COVER_ELEMENTS
#probe -create top -depth all
#probe -create top.dut.condor -depth all
#probe -create top.dut.mcore -depth all
#sn load patch1 rerun
sn load SaConfigTest

sn config run -tick_max=1000M

sn conf wave -use_wave=FALSE
set assert_report_level failure
sn  config run -exit_on=command
sn  test -seed=1

