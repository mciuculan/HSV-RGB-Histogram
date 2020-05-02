function [sol] = rgbHistogram(path_to_image, count_bins)
  sol = zeros (1, 3 * count_bins);
  img = imread (path_to_image);
  R = img(:, :, 1);
  G = img(:, :, 2);
  B = img(:, :, 3);
  k = 1;
  for j = 0 : 256/count_bins : 255
    interval(k) = j;
    k++;
  endfor
  interval(k) = 256;
  A = histc (R, interval);
  [n m] = size (A);
  for i = 1 : n
    sol1(i) = sum (A(i, :));
  endfor
  sol1(end) = [];
  A = histc (G, interval);
  for i = 1 : n
    sol2(i) = sum (A(i, :));
  endfor
  sol2(end) = [];
  A = histc (B, interval);
  for i = 1 : n
    sol3(i) = sum (A(i, :));
  endfor
  sol3(end) = [];
  sol = [sol1, sol2, sol3];
end