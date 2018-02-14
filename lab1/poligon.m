function result = poligon(array)
  n = arrayfun(@(x) sum(array == x), min(array):max(array));
  X = unique(array);
  N = sum(n);
  w = arrayfun(@(x) x/N, n);
  sum(w);
  plot(X, w)
  
  result = w;
  return 
 endFunction