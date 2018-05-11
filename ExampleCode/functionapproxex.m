close all; clear all;



x=[-1e-7:1e-11:1e-7];
M=length(x);
for i=1:M
    f1(i)=((1+x(i))-1)/x(i);
    f2(i)=1;
    error(i)=f1(i)-f2(i);
end

set(0,'defaultaxesfontsize',16)
set(0, 'defaultAxesfontweight', 'bold')

figure(1)
plot(x,f1,'-r','LineWidth',2)
title('y=((1+x)-1)/x','FontWeight','bold')
set(gcf,'Color','white')
xlabel('x values','FontWeight','bold')
ylabel('function values','FontWeight','bold')

figure(2)
plot(x,f2,'--b')
title('y=1','FontWeight','bold','LineWidth',2)
set(gcf,'Color','white')
xlabel('x values','FontWeight','bold')
ylabel('function values','FontWeight','bold')

figure(3)
plot(x,error,'g','LineWidth',2)
title('Error','FontWeight','bold')
set(gcf,'Color','white')
xlabel('x values','FontWeight','bold')
ylabel('function values','FontWeight','bold')

