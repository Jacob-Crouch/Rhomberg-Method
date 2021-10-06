function [y,y0] = myexp(x)
    load ppexp.mat;
    y0 = ppval(pp, x); %initial guess
    y = ppval(pp, x);
    y = y-((mylog(y)-x)*y); %iteration
end