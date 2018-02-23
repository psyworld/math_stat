function result = skewness(x, x_, w);
    mu = sum(((x - x_) .^ 3) .* w);
    result = mu / 3;
endfunction