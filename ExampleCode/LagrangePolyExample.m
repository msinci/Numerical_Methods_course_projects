 %Lagrange Polynomial Example
clear all
close all
xdata=[2 2.5 4];
ydata=[1/2 1/(2.5) 1/4];

L1=@(x) (x-xdata(2))*(x-xdata(3))/((xdata(1)-xdata(2))*(xdata(1)-xdata(3)));
L2=@(x) (x-xdata(1))*(x-xdata(3))/((xdata(2)-xdata(1))*(xdata(2)-xdata(3)));
L3=@(x) (x-xdata(1))*(x-xdata(2))/((xdata(3)-xdata(1))*(xdata(3)-xdata(2)));

P=@(x) ydata(1)*L1(x)+ydata(2)*L2(x)+ydata(3)*L3(x);

xnew=[0.5:.01:5];
L=length(xnew);
for i=1:L
    poly(i)=P(xnew(i));
    real(i)=1/xnew(i);
end

xnew(281)
poly(281)
real(281)
ErrAt3pt3=abs(poly(281)-real(281))
TheoreticalErrorAt3pt3=(3/8)*(1/6)*(3.3-xdata(1))*(3.3-xdata(2))*(3.3-xdata(3))
xnew(L)
poly(L)
real(L)
ErrAt5=abs(poly(L)-real(L))

set(0,'defaultaxesfontsize',24);
figure(1)
plot(xnew,poly,'-m','LineWidth',3)
hold on
plot(xnew,real,'-g','LineWidth',3)
plot(xdata,ydata,'o','MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',10,'LineWidth',2)
hold on
xlabel('x axis','FontWeight','bold')
ylabel('y axis','FontWeight','bold')
legend('Lagrange','f(x)=1/x','Data')
