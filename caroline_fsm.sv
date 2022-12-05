module carolineFsm(
    input logic reset, clock,
    output logic a, b, c, d, g
);
    logic [3:0] state, nextState;

    always_comb begin
        case (state)
            0: begin
                a = 1;
                b = 0;
                c = 0;
                d = 1;
                g = 0;
            end
            1: begin
                a = 1;
                b = 1;
                c = 1;
                d = 0;
                g = 1;
            end
            2: begin
                a = 1;
                b = 0;
                c = 0;
                d = 0;
                g = 0;
            end
            3: begin
                a = 1;
                b = 1;
                c = 1;
                d = 1;
                g = 0;
            end
            4: begin
                a = 0;
                b = 0;
                c = 0;
                d = 1;
                g = 0;
            end
            5: begin
                a = 0;
                b = 0;
                c = 0;
                d = 0;
                g = 0;
            end
            6: begin
                a = 1;
                b = 1;
                c = 1;
                d = 0;
                g = 0;
            end
            7: begin
                a = 1;
                b = 0;
                c = 0;
                d = 1;
                g = 1;
            end
        endcase
    end

    always_ff(@posedge cloc, posedge reset) begin
        if (reset) 
            state <= 0;
        else 
            state <= nextState;
    end


endmodule: carolineFSM