close all;
clear all;
%Showing Arrays
x=[5 6 7 8]
%To take the transpose of a vector, use '
xx=x'

%a comma at the end will suppress the output
y=[1 2 3 4 5];

%Here, we can look at the first, second or third entry in x
x(1)
x(2)
x(3)

%length gives the total number of entries in the vector
Lx=length(x)
Ly=length(y);

%size gives the number of rows (M) and number of columns (N) for vectors
%and matrices
[Mx Nx]=size(x)
[My Ny]=size(y);

%you can create a vector of zeros or a vector of ones
z=zeros(1,5);
zz=zeros(5,1);
a=ones(1,4)

%you can create a matrix of ones
A=ones(3,3)
size(A)
%you can create the nxn identity matrix with eye(n)
B=eye(3)
size(B)
C=eye(4);
size(4);

%a vector can be initialized with values
%b=[starting point: how much to increment by: ending point]
b=[0:0.1:2];
%c=linspace(starting point, end point, number of values to be in the
%vector)
c=linspace(0,2,21);
%checking that b and c are equal, taking the maximum value of the vector
%b-c
max(b-c)


%Dimensions must match for vector products, matrix vector products, etc.
%The product of two vectors of the same size is a new vector where the i^th
%entry is the the product of the i^th entry 
%equivalent to: [x(1)*a(1) x(2)*a(2) x(3)*a(3)+x(4)*a(4)+x(5)*a(5)]
x.*a  %the dot basical means "entry by entry"
a./x %this will be division entry by entry

%Matrix vector product
%x is 1x4 and C is 4x4, so matrix vector product should be 1x4
x*C



%exponentiation
2^2
%The below command will give you an error
%b^2
%This raises each entry of b to the second power
a.^2

%this will give an error because vectors of different lengths
%b./a