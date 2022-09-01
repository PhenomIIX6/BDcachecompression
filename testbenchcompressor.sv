module testbenchcompressor();
	logic [1087:0] d;
	logic con;
	tri t;
	logic [6:0] bd, y;
	logic [2:0] code, cmpr;
	logic [643:0] cq;
	logic [3:0] way;
	logic reset;
	logic clk;
	compressor dut(.d(d), .con(con), .clk(clk), .reset(reset), .cq(cq), .way(way));
	always
		begin
			clk = 1; #10; clk = 0; #10;
		end
	initial
		begin
			reset = 1; #60;
			d = 1088'h0000000000000000AB00AB01AB02AB03AB04AB05AB06AB07AB08AB09AB10AB00AB01AB02AB03AB04AB05AB06AB07AB08AB09AB10AB00AB01AB02AB03AB04AB05AB06AB07AB08AB09AB10AB00AB01AB02AB03AB04AB05AB06AB07AB08AB09AB10AB00AB01AB02AB03AB04AB05AB06AB07AB08AB09AB10AB00AB01AB02AB03AB04AB05AB06AB07AB08; con = 1; reset = 0; #20;
		end
endmodule