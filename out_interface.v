module out_interface 
#(
localparam 	transmitting = 2'b01,
		control = 2'b10
)
(
input wire clk,reset,
input wire [7:0] id,
input wire [7:0] out_processor,
output reg alarm, stop,
output reg [7:0] tx_input
);

reg [1:0] x;

always @*

begin

	if (reset)
		begin
		alarm <= 1'b0;
		stop <= 1'b0;
		end
	else
		begin
		case(id[1:0])
			transmitting:
				tx_input <= out_processor;
			control:
				x <= out_processor[1:0];
		endcase
		end
end

always @ (posedge clk)

begin
alarm <= x[0];
stop <= x[1];
end

endmodule
