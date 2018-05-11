%Option 1
% close all
% clear all
% tic
% f=@(x)1.01*exp(4*x)-4.62*exp(3*x)-3.11*exp(2*x)+12.2*exp(x)-1.99;
% f1a=f(1);
% toc
% 
% close all
% clear all
% tic 
% f=@(x)((((1.01)*exp(x)-4.62)*exp(x)-3.11)*exp(x)+12.2)*exp(x)-1.99;
% f1b=f(1);
% toc


%Option 2
close all
clear all
tic 
1.01*exp(4*1)-4.62*exp(3*1)-3.11*exp(2*1)+12.2*exp(1)-1.99;
toc

close all
clear all
tic
((((1.01)*exp(1)-4.62)*exp(1)-3.11)*exp(1)+12.2)*exp(1)-1.99;
toc

