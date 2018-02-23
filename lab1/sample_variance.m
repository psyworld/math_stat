function result = sample_variance(x, w, x_);
  result = sum(((x-x_) .^ 2) .* w)
endfunction
  