close all;
clear all;

TOL=1e-5;
SUM=0;
N=1;
Y=1.5-1;
M=1000;

while(N<=M)
    SUM=SUM+((Y^N)*(-1)^(N+1))/N;
    check=abs(log(1.5)-SUM);
    if(check<TOL)
        display(N)
        break
    end
    N=N+1;
end

