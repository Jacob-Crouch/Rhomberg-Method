function x = mylog(y)
    f = @(t)1./t;
    [x,err,ier]= romberg(f, 1, y, 1e-14);
end