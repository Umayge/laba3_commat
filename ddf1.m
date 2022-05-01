function y = ddf1(x,h)
  y = (f(x+h)-2*f(x)+f(x-h))/(h^2);