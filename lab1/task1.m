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

figure(1);
w1 = poligon(array1);
x1 = unique(array1);

figure(2);
w2 = poligon(array2);
x2 = unique(array2);

figure(3);
w3 = poligon(array3);
x3 = unique(array3);

figure(4);
wi1 = empirical(x1, w1);

figure(5);
wi2 = empirical(x2, w2);

figure(6);
wi3 = empirical(x3, w3);

x_1 = sample_mean(x1, w1);
x_2 = sample_mean(x2, w2);
x_3 = sample_mean(x3, w3);

db1 = sample_variance(x1, w1, x_1);
db2 = sample_variance(x2, w2, x_2);
db3 = sample_variance(x3, w3, x_3);

sigma_1 = sqrt(db1);
sigma_2 = sqrt(db2);
sigma_3 = sqrt(db3);

mode1 = mode(array1);
mode2 = mode(array2);
mode3 = mode(array3);

median1 = median(array1);
median2 = median(array2);
median3 = median(array3);

skewness1 = skewness(x1, x_1, w1);
skewness2 = skewness(x2, x_2, w2);
skewness3 = skewness(x3, x_3, w3);

kurtosis1 = kurtosis(x1, x_1, w1, sigma_1)
kurtosis2 = kurtosis(x2, x_2, w2, sigma_2)
kurtosis3 = kurtosis(x3, x_3, w3, sigma_3)

