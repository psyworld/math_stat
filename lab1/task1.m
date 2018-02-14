v = 48;
n = 5 + mod(v, 16);
p = 0.1 + 0.01*v;
lambda = 0.5 + 0.1*v;

%array1 = binornd(n,p,1,200);
%dlmwrite("1.txt", array1)
array1 = sort(dlmread("1.txt"));

%array2 = geornd(p, 1, 200);
%dlmwrite("2.txt", array2)
array2 = sort(dlmread("2.txt"));

%array3 = poissrnd(lambda, 1, 200);
%dlmwrite("3.txt", array3)
array3 = sort(dlmread("3.txt"));

figure(1)
w1 = poligon(array1);
x1 = unique(array1);

figure(2)
w2 = poligon(array2);
x2 = unique(array2);

figure(3)
w3 = poligon(array3);
x3 = unique(array3);

figure(4)
wi1 = empirical(x1, w1)

figure(5)
wi2 = empirical(x2, w2)

figure(6)
wi3 = empirical(x3, w3)


