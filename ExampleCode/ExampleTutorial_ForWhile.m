close all;
clear all;

for m=1:100
    num(m)=1/(m+1)
end


%Another example
x=zeros(1,5)
low=2
high=5
for i=low:high
    x(i)=i*i;
end
x
%note that x(1) is not updated and remains zero since the loop starts at
%low=2


%You can also nest statements
m=6
n=10
for i=1:m
    for j=1:n
        H(i,j)=1/(i+j-1)
    end
end
%in double for loop: first you have i=1 and you then evaluate H(1,1),
%H(1,2), H(1,3), ... H(1,10) as you loop through over j from 1 to 10. Then
%you next set i=2 and loop over j. Then i=3 and loop over j. When i=6, loop
%through j and you are done. H should then be a 6x10 matrix

%H(1,2)=1/(1+2-1)=1/2
H(1,2)

%While loop
v=2^0; 
num=1;
%the while loop will continue to execute 2^i as long as it is less than
%10000
while(num<10000)
    num=2^i;
    v=[v num]; %we are saving all of the old entries and adding on the latest power of 2
    i=i+1; %increment the counter
end
i-1
v
    