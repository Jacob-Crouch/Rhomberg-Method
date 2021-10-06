# Rhomberg-Method
A MATLAB implementation of Rhomberg's definite intergral approxiamtion method

function [int,err,ier]= romberg(f,a,b,eps1)
   Input variables
      f- function handle--should point to function to be integrated
      a,b --limits of integration
      eps1 -- tolerance for termination
    Output variables
     int-- final integral by Romberg algorithm
     err -- Error estimate--difference between last two Romberg approximations
     ier --0 -- if integration converges in less than 10 levels of extrapolation; 1-- if there is a failure to converge
     
function new_int=update_trap(f,a,n,old_int)
    Update function for the trapezoid rule spacing h
    to spacing h/2 
   Input parameters
    f --function handle
    a -- left integration limit
    h -- previous mesh spacing 
    n-- number of points minus one
    oldint -- trapezoid integral for spacing h
    
function  int=trap(f,a,b,n)
   Basic composite trapezoid rule for n points.
   Input parameters
     f-- function handle
     a,b -- limits of integration
     n -- number of mesh points 
       i.e., mesh spacing is h=(b-a)/n;
