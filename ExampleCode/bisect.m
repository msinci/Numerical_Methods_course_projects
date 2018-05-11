%bisection method
clear all
tic

a=pi;
b=2*pi;

tol = 1e-5;
Nmax = 100;

f=@(x) tan((x)^(1/2))+x^(1/2);


i = 1;
success = 0;


while (i<=Nmax) && (success==0)
    midpoint=(a+b)/2;
    mid(i)=midpoint;
    fmid = f(midpoint);
    if (fmid == 0) || ((b-a)<tol)
        success = 1;
    else
        i=i+1;
        fa=f(a); 
        if (sign(fa)*sign(fmid)<0)
            b=midpoint;
        else
            a=midpoint;
        end
    end
end

if (success == 1)
    disp('success!');
else
    disp('did not converge');
end

i
format long
display(midpoint) 
toc

tic
format long
numericalsolution=fzero(@(x) tan(sqrt(x))+sqrt(x),3*pi/2)
toc

mid