% temp file
clear all;
clc;
% close all;

% cnt=0;
% for i=0:0.01:3
%     cnt = cnt+1;
%     val(cnt) = 10^(-(2^i));
% end
% 
% plot(val)

cnt=0;

for i=1:0.01:10
   cnt = cnt+1; 
%    out(cnt) = (i-3)^-1 * (i+5)^3 * (i+7)^5 ;
   val(cnt) = g2x(i);
end


plot(val)