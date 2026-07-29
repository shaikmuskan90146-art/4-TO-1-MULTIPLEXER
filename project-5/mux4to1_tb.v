module mux4to1_tb;

reg I0, I1, I2, I3;
reg [1:0] Sel;
wire Y;

mux4to1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    Sel = 2'b00;
    #10 Sel = 2'b01;
    #10 Sel = 2'b10;
    #10 Sel = 2'b11;
    #10 $finish;
end

endmodule
