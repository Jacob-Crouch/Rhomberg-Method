a = 1; %assign parameters
b = sqrt(2);
h = (b-a)/10;
xvals = zeros(10, 1);
yvals = a:h:b;


for i=0:10 %calc xvals
    xvals(i+1) = mylog(yvals(i+1));
end

pp=csape(xvals, yvals, 'complete', [a b]); %calc complete spline
save ppexp pp

c = xvals(11);

hh = c/99;
xx = 0:hh:c;
yy = zeros(1, 100);
yy0 = zeros(1, 100);

for i=1:100 %do newtons method 
    [c,d]=myexp(xx(i));
    yy(i) = c;
    yy0(i) = d;
end

figure(1)
title("test 1");
plot(xx, yy);
figure(2)
title("test 2");
plot(yy-exp(xx),xx);
figure(3)
title("test 3");
plot(yy0-exp(xx),xx);
