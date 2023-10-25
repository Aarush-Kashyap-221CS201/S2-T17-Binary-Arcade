module counter(input[0:3] user_input,input[0:3] random_number,input clk,input reset,output[0:3] x);
    
    //since counter is being employed, output must require memory of previous input, so reg is required
    reg[0:3] x; 
    
    //triggered if clock is at positive edge (0->1)
    always @(posedge clk) 
    begin
        //reset the counter
        if (reset==1) begin
            x=4'b0000; //make counter 0
        end
        //if user_input==random number, counter is incremented by 1
        else if( user_input==random_number )begin
            x=x+4'b0001; //counter+=1
            if (x==4'b1010) $finish; //if counter reaches 10 once incremented, the execution ends
        end
    end

    //triggered if clock is at negative edge (1->0)
    always @(negedge clk) 
    begin
        //reset the counter
        if (reset==1) begin
            x=4'b0000; //make counter 0
        end
        //if user_input==random number, counter is incremented by 1
        else if( user_input==random_number )begin
            x=x+4'b0001; //counter+=1
            if (x==4'b1010) $finish; //if counter reaches 10 once incremented, the execution ends
        end
    end 
endmodule