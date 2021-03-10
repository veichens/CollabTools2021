clear
clc
%don't ask user for resistance and voltage source inputs
r1 = input('What is R_1(ohms)? ');
r2 = input('What is R_2(ohms)? ');
r3 = input('What is R_3(ohms)? ');
r4 = input('What is R_4(ohms)? ');
vs = input('What is the value of the voltage source(Volts)? ');

% Then, we enter the coefficient matrix of Equation 2.36 with
% spaces between elements in each row and semicolons between rows.
G = [(1/r1+1/r2+1/r3) -1/r2; -1/r2 (1/r2+1/r4)]
 
% Next, we enter the column vector for the right-hand side.
I = [vs/r1; 0]

% The MATLAB documentation recommends computing the node
% voltages using V = G\I instead of using V = inv(G)* I.
V = G\I
