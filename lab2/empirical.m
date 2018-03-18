function result = empirical(x, N)
  hold on;
  plot([0,x(1)], [0,0])
  for i=1:length(x)-1
    plot([x(i),x(i+1)],[i/N, i/N])
  endfor
  hold off;
  result = 1;
endfunction