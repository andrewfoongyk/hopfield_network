function h = hopfieldnetwork(x,r)

%set up memories and weight matrix

global m1
global t1
global m2
global t2
global m3
global t3
global m4
global t4

w = (t1*m1 + t2*m2 + t3*m3 + t4*m4).*r;

%randomise weights



i=1;
while (i<26) 
w(i,i) = 0;
i = i+1;
end

%set up initial conditions

a = zeros(25,1);

%activation calculation and asynchronous updating

k=1;
while (k<26)

%calculate activation
a(k) = w(k,:)*x;

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