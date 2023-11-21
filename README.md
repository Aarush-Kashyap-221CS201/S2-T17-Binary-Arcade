# S2-T17-Binary-Arcade
**This repository contains everything related to our project on Binary Arcade, ranging from Verilog Code and Logisim to theoretical descriptions.**
<br><br>
<h2><b>Team Details</b></h3>
<details>
  <summary>Detail</summary>
  <br> <b>Semester: </b>3rd Sem B.Tech CSE<br><br>
  <b>Section: </b>2<br><br>
  <b>Member-1: </b>Aarush Kashyap, 221CS201, aarushk.221cs201@nitk.edu.in <br><br>
  <b>Member-2: </b>Amit Kumar, 221CS207, amitkumar.221cs207@nitk.edu.in <br><br>
  <b>Member-3: </b>Shashank Prabhakar, 221CS246, sam.221cs246@nitk.edu.in <br>
</details> <h2><b>Abstract</b></h1>
<details>
  <summary>Detail</summary><br>
  <b>IDEA</b><br><br>
  The idea of this project is to provide the users with a fruitful and
  enjoyable experience and enhance their calculation skills and binary
  knowledge at the same time by employing a binary game.<br><br>

  **COMPONENTS**

-Breadboard

-Jumper Wires

-Tiptop Switches

-LED lights

-7-Segment Displays

-Battery

-Comparator

-Counter (Random)

-Resistors

-Capacitors

-Transistors


**PROBLEM STATEMENT**

This “Binary Arcade” project allows the users to test their speed and
calculation skills in the binary department by giving 10 numbers in
decimal form and asking them to provide the binary representation of
those numbers in a certain amount of time. The game in addition
allows reattempts for certain questions.
It is quite compulsory in the modern world to have a certain grasp on
digital electronics concepts, specifically binary. This project allows
users to do so while having fun by increasing their efficiency in binary
calculations in this game.


**BACKGROUND**

The users give a fun little quiz through this project.
This quiz consists of 10 questions. In each question, a random number
in the range of 0-99 (both inclusive) is generated through a random
counter and is displayed through 7-segment displays.
The users have to come up with the binary representation of the given
number in a stipulated amount of time. The users will then enter the
representation through switches given on the breadboard and
confirm by clicking on the ‘ok’ switch.
The comparator checks the representation by comparing it with the
random number and increases the score (which will be displayed in
another 7-segment display) on a correct answer.
The quiz obviously goes on in this case and ends after 10 questions.
On the other hand, for a wrong answer, the user will be provided with
reattempts based on his performance. In case of wrong answers for all
reattempts, the quiz will end.
The circuit also consists of a start and reset button.


**MOTIVATION**

This binary arcade game offers a unique and intellectually stimulating
gaming experience that challenges players in a refreshing way. Playing
a binary arcade game requires quick thinking and mental agility. This is
in quite a contrast to what we see in traditional and tedious learning
experiences.
Our goal is to provide the users with an entertaining, thoughtprovoking, and entirely useful experience. The timer keeps the users
engaged and hence increases their speed and skills massively.
It obviously goes without saying that binary knowledge is integral to
digital circuits and engineering as a whole. This project helps the users
to improve upon this knowledge.
Books and other such resources become cumbersome for all of us.
This allows users to accelerate their development in this subject in
addition to an enjoyable experience.
We made this project with this in mind, owing to our interests in this
subject and the need for a fun alternative to books.


**CONTRIBUTION**

Aarush Kashyap

Came up with the idea of this project. Came up with part of
hardware design (switches as binary representation, 7-
segment display for number, score, and the binary
representation). Will help in setting up the circuit and writing
any and all code in the future

Shashank Prabhakar

Came with a blueprint of the final circuit. Came up with the
idea of the comparator for comparing the number given and
the representation given. Will help in setting up the circuit and
any and all code in the future.

Amit Kumar

Came up with the idea of the counter and timer for the
random number generator. Came up with the idea of
reattempts in case of a wrong answer. Will help in setting up
the circuit and writing any and all code in the future

Common

We all agreed on a start and reset button. The idea of an LED
bulb for denoting a right and wrong answer was also agreed
upon. We will also test this project ourselves.
</details> <h2><b>Working</b></h2>
<details>
  <summary>Detail</summary>
  <br>
<h2 align="center"><b>FUNCTIONAL TABLE</b></h2>
<br>
<table align="center">
  <tr>
    <td align="center"><b>COMPONENTS</b></td>
    <td align="center"><b>WORKING/ROLE</b></td>
  </tr>
  <tr>
    <td align="center">Clock</td>
    <td align="center">Every time the clock ticks on a
positive edge (0->1), a random
number is generated</td>
  </tr>
  <tr>
    <td align="center">Random Generator (In the case
of logisim, 4-bit is used for
demonstration)</td>
    <td align="center">Generates a random number
every time the clock ticks on a
positive edge</td>
  </tr>
  <tr>
    <td align="center">Bit Extender (used in logisim for
hex display)</td>
    <td align="center">Two hex displays are used (each
of which represents 4 bits). So, 4
bits generated by logisim are
extended to 8 bits using bit
extender</td>
  </tr>
  <tr>
    <td align="center">Bit splitter (only used in case of
logisim)</td>
    <td align="center">4 bits generated by a random
generator are split into
individual bits for 7 segment
display</td>
  </tr>
  <tr>
    <td align="center">Hex display/7-segment display</td>
    <td align="center">To show the random number
generated</td>
  </tr>
  <tr>
    <td align="center">LEDs and TipTop switches</td>
    <td align="center">For user input. To enter the
binary representation of the
randomly generated number.
LED on represents 1, and off
represents 0. Four LEDs
represent 4-bit binary numbers.
The leftmost LED represents
MSB. Rightmost represents LSB</td>
  </tr>
  <tr>
    <td align="center">Comparator</td>
    <td align="center">The random number and the
user input binary number and
compared using the comparator.
An LED connected to the output
of the comparator glows if the
answer is correct and doesn’t if
not correct.</td>
  </tr>
  <tr>
    <td align="center">Score Counter and display</td>
    <td align="center">In case the comparator shows
true denoting correct answer, a
counter is updated by
incrementing by one and the
same is reflected on a 7-segment
display. If the score reaches 10,
the game and the circuit resets</td>
  </tr>
  <tr>
    <td align="center">Start/Reset (reset only in
hardware)
</td>
    <td align="center">The start button turns on the
circuit. Reset button resets the
circuit</td>
  </tr>
</table>
<br><br>
<h2 align="center"><b>Flowchart</b></h2><br>
![flowchart](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/5b298f94-91cd-4e60-895e-f26723598705)
<br><br>
<h2 align="center"><b>Truth Table</b></h2><br>
![truth_table](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/2cfc2db7-d319-4c51-9339-f53eaa432473)
</details> <h2><b>Logisim Circuit Diagram</b></h2>
<details>
  <summary>Detail</summary><br>
  ![logisim](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/ee4f505e-5584-436a-a5e9-a3f84806d689)
</details> <h2><b>Verilog Code</b></h2>
<details>
  <summary>Detail</summary><br>
  <b>Testbench</b> <br><br>

```
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
```

<b>Module File</b>

```
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
```

</details>












 
