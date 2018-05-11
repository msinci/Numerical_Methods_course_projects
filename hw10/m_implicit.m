function [ u ] = m_implicit(tchange, h)

a = 1/16*tchange/(h^2);
i = 1/h+1;  % h is the increment amount between steps, the step size
            % so i is the number of steps, plus 1 (index starts from 1 in matlab)
k = 1/tchange+1;
u = zeros(i,k); % preallocate for speed
R = zeros(i,1); % size is dependent on the number of steps
A = zeros(i,i);
A(1,1) = 1; % initial and boundary values
A(i,i) = 1;

for j = 2:i-1
    R(j) = 2*sin((j-1)*h*2*pi); % precalculate R for all j
end

u(:,1) = R; % R is the first column of our matrix

for j = 2:i-1
    A(j,j-1) = -a; % we combine backward and forward methods for centrailzed
    A(j,j) = 2*a + 1;
    A(j,j+1) = -a;
end

for j = 2:k
    u(:,j) = A\u(:,j-1);
end

end  % function end