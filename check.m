function y= check(xp,yp,xa,ya,xb,yb,xc,yc)
  d1 = determin(xp,yp,xa,ya,xb,yb);
  d2 = determin(xp,yp,xb,yb,xc,yc);
  d3 = determin(xp,yp,xc,yc,xa,ya);
  thuan = (d1>0 || d2 >0 || d3>0);
  nguoc = (d1<0 || d2 <0 || d3<0);
  y= ~(thuan && nguoc);
end