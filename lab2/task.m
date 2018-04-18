v = 48;
a = (-1)^(v)*0.1*v;
sigma = 0.01*v+1;
b = a + 0.1*v+1;
lambda = 1 + (-1)^(v)*0.1*v;
N = 200;

%array1 = normrnd(a, sigma, 1, 200);
%dlmwrite("1.txt", array1)
array1_ = dlmread("1.txt");
array1 = sort(dlmread("1.txt"));


%array2 = exprnd(1/lambda,1, 200);
%dlmwrite("2.txt", array2)

array2 = sort(dlmread("2.txt"));
array2_ = dlmread("1.txt");
%array2 = round(array2*100000)/100000;
%array2_ = round(array2*100000)/100000;

%array3 = unifrnd(a,b, 1, 200);
%dlmwrite("3.txt", array3)
array3 = sort(dlmread("3.txt"));
array3_ = dlmread("3.txt");

[intervals1, wi_1, N1, n1, h1, x_1] = w_i(array1, 1);
[intervals2, wi_2, N2, n2, h2, x_2] = w_i(array2, 2);
[intervals3, wi_3, N3, n3, h3, x_3] = w_i(array3, 3);

figure(4);
empirical(array1, N);

figure(5);
empirical(array2, N);

figure(6);
empirical(array3, N);

x_1_ = sample_mean(x_1, wi_1);
x_2_ = sample_mean(x_2, wi_2);
x_3_ = sample_mean(x_3, wi_3);

db1 = sample_variance(x_1, wi_1, x_1_);
db2 = sample_variance(x_2, wi_2, x_2_);
db3 = sample_variance(x_3, wi_3, x_3_);

sdb1 = db1 - h1^2/12;
sdb2 = db2 - h2^2/12;
sdb3 = db3 - h3^2/12;

std_deviation1 = sqrt(sdb1);
std_deviation2 = sqrt(sdb2);
std_deviation3 = sqrt(sdb3);

mode1 = mode_(intervals1, n1, h1, wi_1);
mode2 = mode_(intervals2, n2, h2, wi_2);
mode3 = mode_(intervals3, n3, h3, wi_3);

median1 = median(array1);
median2 = median(array2);
median3 = median(array3);

skewness1 = skewness(x_1, x_1_, wi_1, std_deviation1)
skewness2 = skewness(x_2, x_2_, wi_2, std_deviation2)
skewness3 = skewness(x_3, x_3_, wi_3, std_deviation3)

kurtosis1 = kurtosis(x_1, x_1_, wi_1, std_deviation1)
kurtosis2 = kurtosis(x_2, x_2_, wi_2, std_deviation2)
kurtosis3 = kurtosis(x_3, x_3_, wi_3, std_deviation3)











