function [D, err, relerr, n]=richardson(f,x,delta,toler)
    err=1.0;
    relerr=1.0;
    h=1.0;
    j=1;
    D(1,1)=(feval(f,x+h)-feval(f,x-h))/(2*h);
    
    while (relerr>toler & err>delta & j<12)
        h=h/2;
        D(j+1,1)=(feval(f,x+h)-feval(f,x-h))/(2*h);
        for k=1:j
            D(j+1,k+1)=D(j+1,k)+(D(j+1,k)-D(j,k))/(4^k-1);
        end
        err=abs(D(j+1,j+1)-D(j,j));
        relerr=2*err/(abs(D(j+1,j+1))+abs(D(j,j))+eps);
        j=j+1;
    end
    [n n]=size(D);