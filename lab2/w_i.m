function [a, result, N, ni, h1, x_i_r] = w_i( data, k )
  m   = floor(log2(length(data)));
  a_0 = min(data);
  a_m = max(data);
  d   = a_m - a_0;
  ivs = [a_0 arrayfun(@(i) a_0 + i*d/m, 1:m)]
  n_i = arrayfun(@(i) sum((data >= ivs(i)) .* (data <= ivs(i+1))), 1:m)
  w_i = n_i/length(data);
  x_i = arrayfun(@(i) mean(ivs(i:i+1)), 1:m);
  h   = d/m;
  w_i_n = w_i / h;

  
  figure(k);
  for i = 1:length(ivs)-1
    line ([ivs(i) ivs(i)], [0 w_i_n(i)], "linestyle", "-", "color", "b");
    line ([ivs(i+1) ivs(i+1)], [0 w_i_n(i)], "linestyle", "-", "color", "b");
    line ([ivs(i) ivs(i+1)], [w_i_n(i) w_i_n(i)], "linestyle", "-", "color", "b");
  endfor
  
  a = ivs;
  result = w_i;
  N = sum(n_i);
  ni = n_i;
  h1 = h;
  x_i_r = x_i;
  return;
endfunction