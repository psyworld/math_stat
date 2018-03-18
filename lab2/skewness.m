function result = skewness(x, x_, w, sigma);
    mu = sum(((x - x_) .^ 3) .* w);
    result = mu / sigma^3;
endfunction