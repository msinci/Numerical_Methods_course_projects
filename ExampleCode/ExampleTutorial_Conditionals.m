close all;
clear all;

%initialize A as a vector with three entries
A=[6 3 9];
n=3;
%since n=3 and is not equal to zero, we will enter the if statement
if(n~=0)
    A=A/n;
    %since n=3 is a scalar, we divide each entry of the vector A by 3
end
A


%initialize i and j
i=6;
j=21;
%first check if i>5
if(i>5)
    k=i; %if i>5, set k equal to i and exit all of these statements
elseif(i>1)&(j==20)
    %if both i greater than 1 and j equal to 20, then set k as 5*i+j and
    %exit the if statement
    k=5*i+j;
else
    %go to this condition if others were not satisfied and set k to 1
    k=1;
end
k

%initialize i and j
i=2;
j=20;
%first check if i>5
if(i>5)
    k=i; %if i>5, set k equal to i and exit all of these statements
elseif(i>1)&(j==20)
    %if both i greater than 1 and j equal to 20, then set k as 5*i+j and
    %exit the if statement
    k=5*i+j;
else
    %go to this condition if others were not satisfied and set k to 1
    k=1;
end
k

%initialize i and j
i=2;
j=21;
%first check if i>5
if(i>5)
    k=i; %if i>5, set k equal to i and exit all of these statements
elseif(i>1)&(j==20)
    %if both i greater than 1 and j equal to 20, then set k as 5*i+j and
    %exit the if statement
    k=5*i+j;
else
    %go to this condition if others were not satisfied and set k to 1
    k=1;
end
k