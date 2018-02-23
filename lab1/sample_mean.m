function result = sample_mean (x, w);
  x = sum(x .* w);
  result = x;
endfunction