function p = printbmp(n,m)

J = zeros (5,5);
I = zeros (5,5);

i=1;
while(i<6)
I(i,:) = m((i-1)*5+1:i*5);
i=i+1;
end

i=1;
while(i<6)
J(i,:) = n((i-1)*5+1:i*5);
i=i+1;
end
 
p = imresize ([J I], 50, 'nearest');
imwrite (p, 'output.bmp');
