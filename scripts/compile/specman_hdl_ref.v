
module specman_hdl_ref;
initial
begin
//     $export_deposit(top.dut.start);
     $export_deposit(dut.start);
//     $export_deposit(top.dut.addResolt);
     $export_deposit(dut.addResolt);
//     $export_read(top.dut.reset);
     $export_read(dut.reset);
     $export_event(dut.reset);
//     $export_read(top.dut.addResolt);
     $export_read(dut.addResolt);
//     $export_event(top.dut.done);
     $export_event(dut.done);
end
endmodule
