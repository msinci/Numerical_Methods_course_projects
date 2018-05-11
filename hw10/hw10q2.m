% Mehmet Sinan INCI @ WPI
% Numerical Methods HW10 Question 2
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands
format long;

%% part a explicit method

h = 0.1;
tchange = 0.1;
u = m_explicit(tchange, h);
figure;title('explicit method, h=0.1, tchange = 0.1');
plot(u);

h = 0.01;
tchange = 0.1;
u = m_explicit(tchange, h);
figure;
plot(u);title('explicit method, h=0.01, tchange = 0.1');

%% part b implicit method

h = 0.1;
tchange = 0.1;
u = m_implicit(tchange, h);
figure;
plot(u);title('implicit method, h=0.1, tchange = 0.1');

h = 0.01;
tchange = 0.1;
u = m_implicit(tchange, h);
figure;
plot(u);title('implicit method, h=0.01, tchange = 0.1');

