module full_adder(a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
reg sum, cout;

always @(*) begin
if (cin==1'b0) begin
sum=a^b;
cout=a&b;
end
else begin
sum=~(a^b);
cout=a|b;
end
end
endmodule
