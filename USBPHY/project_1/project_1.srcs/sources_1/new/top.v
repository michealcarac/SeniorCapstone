module top(
    input intr[1:0],
    input clk,
    reg led,
    output led
);

always @(posedge clk) begin
    if (intr == 1) begin
        led = 1;
    end
end

assign led = led;
endmodule
