`timescale 1ns/1ns
module tb_fulladder();
  reg a, b, cin;
  wire sum, cout;
  
  full_adder FA(a, b, cin, sum, cout);
  
  initial begin
    $monitor("a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
    
    a = 0; b = 0; cin = 0;
    #250 a = 0; b = 0; cin = 1;
    #250 a = 0; b = 1; cin = 0;
    #250 a = 0; b = 1; cin = 1;
    #250 a = 1; b = 0; cin = 0;
    #250 a = 1; b = 0; cin = 1;
    #250 a = 1; b = 1; cin = 0;
    #250 a = 1; b = 1; cin = 1;
    $stop;
  end
endmodule






