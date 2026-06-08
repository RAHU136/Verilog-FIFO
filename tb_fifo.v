module tb_fifo;

reg clk;
reg rst;
reg wr_en;
reg rd_en;
reg [7:0] data_in;

wire [7:0] data_out;
wire full;
wire empty;

fifo uut(
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .full(full),
    .empty(empty)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    #10 rst = 0;

    // Write data
    wr_en = 1;
    data_in = 8'd10; #10;
    data_in = 8'd20; #10;
    data_in = 8'd30; #10;
    data_in = 8'd40; #10;
    wr_en = 0;

    // Read data
    rd_en = 1;
    #40;
    rd_en = 0;

    #20;
    $finish;
end

initial
begin
    $dumpfile("fifo.vcd");
    $dumpvars(0,tb_fifo);
end

endmodule
