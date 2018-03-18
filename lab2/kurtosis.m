function result = kurtosis(x, x_, w, sigma)
  mu = sum(((x - x_) .^ 4) .* w);
  result = mu / sigma^4 - 3; 
endfunction