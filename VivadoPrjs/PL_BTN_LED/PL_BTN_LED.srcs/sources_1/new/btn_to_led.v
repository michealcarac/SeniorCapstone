`timescale 1ns / 1ps

module btn_to_led(
    input [3:0] btn,
    output led
    );
    reg led = 1'b0;
    
    always @ (btn)
        begin
            led <= |btn; // Reduction module btn_to_led
        end 
endmodule
