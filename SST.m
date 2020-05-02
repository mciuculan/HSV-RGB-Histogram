function [x] = SST(A, b)
  [n m] = size(A);
  x = zeros(1, n);
  for i = n : -1 : 1
    S = 0;
    for j = i + 1 : m
      S = S+ A(i, j)*x(j);
    endfor
    x(i) = (b(i) - S)/A(i, i);
  endfor
end
    