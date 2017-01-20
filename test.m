%(input filename, dimension of image, number of iterations)

function t = test(filename,n,k)

close all;

x=convert(filename,n);

%fill first matrix with initial image
i=1;
while(i<=n)
B(i,:) = x((i-1)*n+1:i*n);
i=i+1;
end

j=1;
%iterate hopfield network
while (j<=k)
h=hopfield(x,n);

%convert hopfield network output into image matrix
i=1;
while(i<=n)
A(i,:) = h((i-1)*n+1:i*n);
i=i+1;
end

%insert 'breaker' and concatenate

g=ones(n,1)*-1;
B=[B g A];

x=h;
j=j+1;
end

%print

p = imresize (B, 5, 'nearest');
imwrite (p, 'output.jpg');

imshow('output.jpg');


