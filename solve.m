function[] =  solve
    a = [];
    maxGoc = 360;
    k = maxGoc*720/360+ 2;
    for j = 0:k
        hieuGoc = 360*j+180;
        diem = [sym(hieuGoc/11) sym(hieuGoc/719) sym(hieuGoc/708)];
        a = [a diem];
    end
    a(a>360) = [];
    a = [0 a 360];
    a = unique(a);
    a = sort(a);
    s = size(a,2);
    yes = 0;
    for j = 2:s
        l = tinhphu( double(a(j) + a(j-1))/2);
        if l
          yes = yes + sym(a(j) - a(j-1));
        end;
    end
    sym(yes/360)
end