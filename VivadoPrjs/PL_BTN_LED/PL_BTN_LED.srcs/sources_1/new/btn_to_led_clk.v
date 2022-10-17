`timescale 1ns / 1ps

module btn_to_led_clk(
    input clk,
    input [3:0] btn,
    output led
    );
    reg led = 1'b0;
    reg logic_btns = 1'b0;
    
    always @ (btn)
        logic_btns <= |btn; // Reduction module btn_to_led
    
    always @ (posedge clk)
        begin
            if (logic_btns)
                led <= 1;
            else
                led <= 0;
        end
endmodule
