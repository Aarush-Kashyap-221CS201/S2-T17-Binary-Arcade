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
</details>
<br>
<h2><b>ABSTRACT</b></h1>
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
</details>
<detail>
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
</detail>


<br><br>
<h2 align="center"><b>FLOW OF EXECUTION</b></h2>
<br><br>
<b>Flowchart</b><br>
![flowchart](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/3c444026-31a2-4f92-b8bf-68eae2a45439)
<br><br>
<b>Truth Table</b><br>
![truth_table](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/2cfc2db7-d319-4c51-9339-f53eaa432473)
<br><br>
<h2 align="center"><b>Results</b></h2>
<br><br>
<b>GTKWAVE</b><br>
![gtkwave](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/e82519e8-61d1-4521-ade1-3414a020fe69)
<br><br>
<b>Logisim screenshoots during game playthrough</b><br>
![1](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/c8a609ff-3d16-4a4a-80dc-1211a8438f0d) <br>
![2](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/5cfc902e-2043-40ac-b891-5b17ffbe1d40) <br>
![3](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/921a59c5-75d0-467e-99f6-fb17fd34ada1) <br>
![4](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/e34c2c06-128c-444f-9047-d7eb1b571ed7) <br>
![5](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/assets/148947264/1d8c7c50-c2b5-4299-8906-59bdaa299a10) <br>
<br>
<b>VERILOG OUTPUT</b> <br>
[output.pdf](https://github.com/Aarush-Kashyap-221CS201/S2-T17-Binary-Arcade/files/13166961/output.pdf) <br><br><br>
<h2 align="center">THANK YOU!!</h2>








 
