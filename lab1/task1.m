v = 48;
n = 5 + mod(v, 16);
p = 0.1 + 0.01*v;
lambda = 0.5 + 0.1*v;

array1 = binornd(n,p,1,200);
dlmwrite("1.txt", array1)

array2 = geornd(p, 1, 200);
dlmwrite("2.txt", array2)

array3 = poissrnd(lambda, 200, 1);
dlmwrite("3.txt", array3)

figure(1)
w = poligon(sort(array1))

figure(2)
w = poligon(sort(array2))

figure(3)
w = poligon(sort(array3))
