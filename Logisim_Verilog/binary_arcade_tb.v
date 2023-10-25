`include "binary_arcade.v" //including the module file

module binary_arcade_tb;

//all variables used in this code

reg[0:3] user_input; //this is the user input (binary representation of randomly generated number)

reg[0:3] random_number; //this is the random number generated in decimal form

reg clk; //this is the clock

reg reset; //reset button, 1 if we need to reset counter, 0 if counter is operating as usual

wire[0:3] x; //counter, only incremented if user_input=correct binary representation of random_number

//instantiation

counter uut( 
    .user_input(user_input),
    .random_number(random_number),
    .clk(clk),
    .reset(reset),
    .x(x) 
);

//starting the code

initial begin

    //making the vcd(gtkwave) file
    $dumpfile("binary_arcade.vcd");
    $dumpvars(0,binary_arcade_tb);
    
    //global reset
    
    clk=0; //initializing clock

    reset=1; //to reset counter to 0
    
    user_input=$random; //user_input for the sake of this code is a randomly generated number
    
    #100; //waiting 100ns for global reset

    //displaying clock,user_input,random_number and counter
    $display("\n");
    $display("Clock | Random_Number |   User_Input  | Counter\n");
    $monitor("  %d   |     %4d      |      %4b     | %4d",clk,random_number,user_input,x); 
    
    //start counter
    reset=0;
    
end
always #5 clk=~clk; //clock is being triggered every 5 ns
always #5 random_number=$random; //b is being randomly generated every time clock triggers
endmodule
