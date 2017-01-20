function l = learn(filename,n,t)

global W;

x = convert(filename,n);
xt = transpose(x);

if(t==1)
W=W+x*xt;
else
W=W-x*xt;
end

