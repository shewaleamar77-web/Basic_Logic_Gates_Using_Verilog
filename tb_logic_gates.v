module tb_logic_gates;

reg A, B;
wire Y_nand, Y_nor;

nand_gate dut1(A, B, Y_nand);
nor_gate dut2(A, B, Y_nor);

initial begin
    $display("A B | NAND NOR");

    A=0; B=0; #10;
    $display("%b %b | %b %b", A,B,Y_nand,Y_nor);

    A=0; B=1; #10;
    $display("%b %b | %b %b", A,B,Y_nand,Y_nor);

    A=1; B=0; #10;
    $display("%b %b | %b %b", A,B,Y_nand,Y_nor);

    A=1; B=1; #10;
    $display("%b %b | %b %b", A,B,Y_nand,Y_nor);

    $finish;
end

endmodule