function [value, error] = myTaylor(a,b,h)

n =1/h;
t =1;
y(1) = 0;
myf(1) = 2*y(1)/t+(t^2)*(exp(t));
myfp(1) = 2*myf(1)/t-(2*y(1)/(t^2))+2*t*exp(t)+(t^2)*(exp(t));

for index=2:n+1
    t=t+h;
    y(index) = y(index-1) + h*myf(index-1) + ((h^2)/2)*myfp(index-1);
    myf(index) = 2*y(index)/t+(t^2)*(exp(t));
    myfp(index) = 2*myf(index)/t-(2*y(index)/(t^2)) +2*t*exp(t)+(t^2)*(exp(t));
end

error = abs(y(n+1)-4*(exp(2)-exp(1)));
x = 1:h:2;
% plot(x,y);
% figure;
% plot(error);

end