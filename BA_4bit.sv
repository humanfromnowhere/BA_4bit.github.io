// Code your design here
module full_adder(sum,cout,in1, in2, cin);
	input in1,in2,cin;
	output sum,cout;
  	wire w1,w2,w3;
  assign w1= in1^in2;
  assign sum=w1 ^cin;
  assign w2 = in1 & in2;
  assign w3= w1 & cin;
  assign cout = w2|w3;
  

endmodule
//4bit adder
module BA_4bit(sum, cout, a, b);
  output [3:0]sum;
  output cout;
  input [3:0]a;
  input [3:0]b;
  wire [2:0]c;
  full_adder fa0 (sum[0], c[0], a[0], b[0], 1'b0);
  full_adder fa1 (sum[1], c[1], a[1], b[1], c[0]);
  full_adder fa2 (sum[2], c[2], a[2], b[2], c[1]);
  full_adder fa3 (sum[3], cout, a[3], b[3], c[2]);
endmodule
