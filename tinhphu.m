function y = tinhphu(phi)
   xtam = 250;ytam = 200;r=200;
   r1 = r/2;
   r2 = r*0.75;
   r3 = r;
   x1 = xtam + r1 * cosd(phi);
   y1 = ytam + r1 * sind(phi); 
   x2 = xtam + r2 * cosd(12*phi);
   y2 = ytam+ r2 * sind(12*phi);
   x3 = xtam + r3 * cosd(12*60*phi);
   y3 = ytam + r3 * sind(12*60*phi);
   y = check(xtam,ytam,x1,y1,x2,y2,x3,y3);
end


