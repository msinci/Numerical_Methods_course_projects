% Mehmet Sinan INCI @ WPI
% Numerical Methods HW8 Question 1
close all;  % close all figures
clear all;  % clear all variables
clc;        % clear recent commands

h=0.2;
t=0:h:60;
[a, b] = size(t);
L=25000;
k=0.00003;
I0=250;
I(1) = I0 + h*k*I0*(L-I0);
y0=250;


x_act = 30;
y_act = I(x_act);
k=(x_act-a)/h+1;
y_approx=y(k);
n=(b-a)/h;
x1=a:h:b;
y1:zeros(1,n);
y1(1)=y0+h*f(y0);

for i=2:n
    y1(i) = y1(i-1) + h*f(y1(i-1));
end

y1=[y0,y1];
k=(x_act-a)/h+1;
y_approx1 = y1(k);

h=0.05;
n=(b-a)/h;
x2=a:h:b;
y2:zeros(1,n);
y2(1)=y0+h*f(y0);
for i=2:n
    y2(i) = y2(i-1) + h*f(y2(i-1));
end

y2=[y0,y2];
k=(x_act-a)/h+1;
y_approx2 = y2(k);
h=0.025;
n=(b-a)/h;


