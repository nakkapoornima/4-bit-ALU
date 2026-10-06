module tb;
reg [3:0] A;
reg [3:0] B;
reg [1:0] sel;
wire [3:0] Y;
alu uut(.A(A),.B(B),.sel(sel),.Y(Y));
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    A = 4'b0011;
    B = 4'b0001;
    sel = 2'b00;
    #10;
    $display("A=%b B=%b sel=%b Y=%b", A, B, sel, Y);
    A = 4'b0101;
    B = 4'b0010;
    sel = 2'b01;
    #10;
    $display("A=%b B=%b sel=%b Y=%b", A, B, sel, Y);
    A = 4'b1100;
    B = 4'b1010;
    sel = 2'b10;
    #10;
    $display("A=%b B=%b sel=%b Y=%b", A, B, sel, Y);
    A = 4'b1100;
    B = 4'b1010;
    sel = 2'b11;
    #10;
    $display("A=%b B=%b sel=%b Y=%b", A, B, sel, Y);
    $finish;
end
endmodule
