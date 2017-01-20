function h = hopfield(x,n)

global W;

%set up initial conditions

a = zeros(n^2,1);

%activation calculation and asynchronous updating

k=1;
while (k<=n^2)

%calculate activation
a(k) = W(k,:)*x;

%update state
if (a(k) >= 0)
x(k)=1;
else
x(k)=-1;
end

%repeat
k=k+1;
end

h=x;