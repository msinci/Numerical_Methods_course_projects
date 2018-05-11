function [x,y] = backEuler(f,xinit,yinit,xfinal,h)
% needs fixing
    %f - this is your y prime
    %xinit - initial X
    %yinit - initial Y
    %xfinal - final X
    %h - step size

n = abs((xfinal-xinit)/h) %Calculate steps

    %Inititialize arrays...
    %The first elements take xinit and yinit corespondigly, the rest fill with 0s.
    x = [xinit zeros(1,n)];
    y = [yinit zeros(1,n)];

    %Numeric routine
    for i = 1:n
        x(i+1) = x(i)+h;
        t(i +1)=t(i )+dt;
        y(i+1)=solve('y(i+1)=y(i)+dt*f(t(i+1),y(i+1)');
        
        if abs((y(i+1) - ynew)/ynew) > 0.0000000001 
            ynew = y(i+1);
            y(i+1) = y(i)+h*f(x(i+1),ynew);
        end

    end
end