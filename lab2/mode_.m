function result = mode_(a, n, h, w);
  k = find(n == max(n))
  if k == 1
    result = a(k)+h*(w(k))/(2*w(k)-w(k+1))
  elseif k == length(w)
    result = a(k)+h*(w(k)-w(k-1))/(2*w(k)-w(k-1))
  else
    result = a(k)+h*(w(k)-w(k-1))/(2*w(k)-w(k-1)-w(k+1))
  endif
endfunction