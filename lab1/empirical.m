function result = empirical(a, w)
    x = 0:1:max(a);
    m = (0) .* (x < x(1));
    wi = w(1);
    m += (wi) .* (x(1) <= x & x < x(2));
    for i=2:(length(x)-1)
      wi += w(i);
      m += (wi) .* (x(i) <= x & x < x(i+1));
    endfor
    m += (1) .* (x >= x(length(x)));
    result = m;
    plot(x, m)
endfunction