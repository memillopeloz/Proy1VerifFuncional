`ifndef ENV_SV
`define ENV_SV

`include "sdrc_intf.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
	driver drv;
	scoreboard sb;
	monitor mon;
	virtual sdrc_if intf;
	
	function new(virtual sdrc_if intf);
		this.intf = intf;
		sb = new();
		drv = new(intf, sb);
		mon = new(intf, sb);
	endfunction
	
endclass

`endif
