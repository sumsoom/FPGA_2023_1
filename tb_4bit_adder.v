`timescale 1ns/1ns
module adder_4bit_tb();

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire cout;

adder_4bit dut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));


initial begin

    a = 4'b0000; b = 4'b0000; cin = 0;
    #250 $display("Test 1: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b1111; b = 4'b1111; cin = 0;
    #250 $display("Test 2: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b1010; b = 4'b0110; cin = 0;
    #250 $display("Test 3: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b0110; b = 4'b1010; cin = 0;
    #250 $display("Test 4: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b1010; b = 4'b0110; cin = 1;
    #250 $display("Test 5: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b0110; b = 4'b1010; cin = 1;
    #250 $display("Test 6: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b1010; b = 4'b1010; cin = 0;
    #250 $display("Test 7: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    

    a = 4'b1010; b = 4'b1010; cin = 1;
    #250 $display("Test 8: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    $stop;
  end
endmodule


