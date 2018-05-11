% Mehmet Sinan INCI @ WPI
% Numerical Methods Question 3

% clear the workspace first
clc;
clear all;

% declare variables that i will use
myeps = 1.0;
pre = 1.0;
post = 1.0;

%% METHOD 1 %%

% go from 10^-1000 to 10^-1, adding it to the original number, pre
% if the number changes that means we have reached the eps
for i=1000:-1:1
   post = pre + (1/10^i);
   if (pre ~= post)
       myeps = 1/10^i;
       sprintf('machine eps is: %d',eps)
       sprintf('Method1 calculated eps is: %d',myeps)
       break
   end
end

%% METHOD 2 %%
% The second method
% This time I use steps of 1/2^n
myeps = 1;

while (1.0 +  myeps)~= 1.0  % loop until the value of myeps 
    myeps = 0.5 * myeps;    % is too small to matter
end
    myeps = myeps*2; % we mult with 2 since the last loop 
                     % value was smaller than epsilon
       sprintf('Method2 calculated eps is: %d',myeps)

