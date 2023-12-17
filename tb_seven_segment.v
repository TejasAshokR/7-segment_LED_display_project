/// Verilog code for test bench of sevensegment
// Define module
module tb_seven_segment ;

reg [3:0] bcd ; reg clk ; // Define the input
wire [6:0] display ; // Define the outputs
// Map the I/O ports with UUT
seven_segment uut (. bcd (bcd ) ,. display ( display ));

// Define Initial block
initial begin

bcd =4'b0000 ; // Initialise the input ’bcd ’ value to ’0’

end

// Initialize input ports with different combination of BCD data
initial begin

bcd = 4'b0001 ;#100;
bcd = 4'b0011 ;#100;
bcd = 4'b1000 ;#100;
bcd = 4'b1001 ;#100;
#100;

end // end of initial block .
endmodule
