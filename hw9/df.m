function z = df(t,y)
            disp('d1 = (t - y)/2;');...
d1 = (t - y)/2;
            disp('d2 = (2 - t + y)/4;');...
d2 = (2 - t + y)/4;
            disp('d3 = (- 2 + t - y)/8;');...
d3 = (- 2 + t - y)/8;
            disp('d4 = (2 - t + y)/16;');...
d4 = (2 - t + y)/16;
            disp('z = [d1 d2 d3 d4];');...
z = [d1 d2 d3 d4];
diary off;
