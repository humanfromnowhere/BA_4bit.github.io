// Code your testbench here
// or browse Examples
module tbBA_4bit;
  reg [3:0]a,b;
  wire [3:0] sum;
  wire cout; //carry;

  BA_4bit uut(sum, cout, a, b);
  
  initial
    begin
      $monitor($time," a=%b, b=%b, cout=%b, sum=%b\n",a,b,cout,sum);
    end
    

	initial 
		begin
 		       a=4'b0110;b=4'b1010;
			#1 a=4'b0010;b=4'b0001;
			#1 a=4'b1100;b=4'b1011;
			#1 a=4'b0001;b=4'b1100;
			#1 a=4'b1001;b=4'b0100;
        	$finish;
    	//$stop;
	   end
  
 	//Dump waves (only required here)
	initial
  		begin
    		$dumpfile("dump.vcd");
    		$dumpvars(1);
  		end 
endmodule