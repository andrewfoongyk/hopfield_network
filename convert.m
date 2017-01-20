function c = convert(filename,n)

close all;
A = imread(filename);

%set size

s = [n, n];
B = imresize(A,s,'nearest');

%convert to 'binary'
P = zeros(n);
i=1;
while(i<=n)
j=1;
while(j<=n)
if (B(i,j)>127)
P(i,j)=1;
else
P(i,j)=-1;
end
j=j+1;
end
i=i+1;
end

imwrite(P,'converted.bmp');
imshow('converted.bmp');

%store in vector

x=zeros(n^2,1);
i=1;
while(i<=n)
x(n*(i-1)+1:n*i)=transpose(P(i,1:n));
i=i+1;
end

c=x;



 