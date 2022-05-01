x=1
kk=[]; hh=[];rr=[];
h=1;
for k = 1:50
  kk = [kk,k];
  hh = [hh,h];
  r = df(x)-df4(x,h);
  rr = [rr,r];
  h = h/2;
end
format short g
res11 = [kk',hh',rr']
semilogy(kk,abs(rr)+1e-15)
grid on
title('df4 - O(h^4)')
