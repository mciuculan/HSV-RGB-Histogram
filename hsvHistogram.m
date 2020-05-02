function [sol] = hsvHistogram(path_to_image, count_bins)
  sol = zeros (1, 3 * count_bins);
  img = imread (path_to_image);
  [H S V] = RGB2HSV(img);
  
  k = 1;
  for j = 0 : 1.01/count_bins : 1.01
    interval(k) = j;
    k++;
  endfor
  A = histc (H, interval);
  [n m] = size (A);
  for i = 1 : n
    sol1(i) = sum (A(i, :));
  endfor
  sol1(end) = [];
  
  A = histc (S, interval);
  for i = 1 : n
    sol2(i) = sum (A(i, :));
  endfor
  sol2(end) = [];
  
  A = histc(V, interval);
  for i = 1 : n
    sol3(i) = sum(A (i, :));
  endfor
  sol3(end) = [];
  
  sol = [sol1, sol2, sol3];
end