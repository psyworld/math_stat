function result = empirical(x, w)
  hold on;
  plot([0,x(1)], [0,0])
  wi = w(1);
  for i=1:length(x)-1
    plot([x(i),x(i+1)],[wi, wi])
    wi = wi + w(i+1);
  endfor
  plot([x(length(x)),x(length(x))+1],[1,1])
  hold off;
  result = wi
endfunction