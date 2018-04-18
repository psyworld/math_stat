%normal distribution

array_ = dlmread("array1.txt");
array = sort(array_);

[m1, intervals, wi, N, n, h, x] = w_i(array_, 1);

x_ = sample_mean(x, wi);
db = sample_variance(x, wi, x_);
sdb = db - h^2/12;
std_deviation = sqrt(sdb);

phi = 1/std_deviation*normpdf((intervals-x_)/std_deviation);
PHI = normcdf((intervals-x_)/std_deviation);
p_k = ([PHI(2:end) 0] - PHI(1:end))(1:end-1);
p_k(1) = normcdf((intervals(2)-x_)/std_deviation);
p_k(end) = 1-normcdf((intervals(end-1)-x_)/std_deviation);

j_p_x = arrayfun(@(j) intervals(1)+j/100*(intervals(end) - intervals(1)), 1:100);
j_p_y = 1/std_deviation * normpdf((j_p_x-x_)/std_deviation);
plot(j_p_x, j_p_y, "r");

hold off;

xi_2 = N*sum(((wi - p_k) .^ 2)/p_k)
l = length(intervals)-1

%uniform distribution

array_2 = dlmread("array2.txt");
array2 = sort(array_2);

[m2, intervals2, wi2, N2, n2, h2, x2] = w_i(array_2, 3);

x_2 = sample_mean(x2, wi2);
db2 = sample_variance(x2, wi2, x_2);
sdb2 = db2 - h2^2/12;
std_deviation2 = sqrt(sdb2);

a = 5.8;
b = 11.8;
plot([a, b], [1/(b - a), 1/(b - a)], 'r');



p_k2 = 1/m2
xi2_2 = N2*sum(((wi2 - p_k2) .^ 2)/p_k2)
l = m2-1










