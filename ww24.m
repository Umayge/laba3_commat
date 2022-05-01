x=1
kk=[]; hh=[];rr=[];
h=1;
for k = 1:25
  kk = [kk,k];
  hh = [hh,h];
  r = ddf(x)-ddf4(x,h);
  rr = [rr,r];
  h = h/2;
end
format short g
res11 = [kk',hh',rr']
semilogy(kk,abs(rr)+1e-15)
grid on
title('ddf4 - O(h^4)')