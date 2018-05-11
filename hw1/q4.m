% Mehmet Sinan INCI @ WPI
% Numerical Methods Question 4

% clear the workspace first
clc;
clear all;

% declare variables that i will use
format long;
s1 = 0;
s2 = 0;

tic
for i=1:1835420  % s1 is calculated starting from 1
   s1 = s1 + 1/i; 
end
toc

tic
for i=1835420:-1:1 % s2 is calculated starting from 1/1835420
   s2 = s2 + 1/i; 
end
toc

s1
s2

sprintf('|S1-S2| is: %d',abs(s1-s2))
