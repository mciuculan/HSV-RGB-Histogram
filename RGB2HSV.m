function [H S V] = RGB2HSV(img)
  R = double(img(:, :, 1));
  G = double(img(:, :, 2));
  B = double(img(:, :, 3));
  R1 = R/255;
  G1 = G/255;
  B1 = B/255;
  R = R1;
  G = G1;
  B = B1; %doar pt simplificarea notatiilor;
  [n m] = size(R);
  for i = 1 : n
    for j = 1 : m
      Cmax = max (max (R(i,j), G(i,j)), B(i,j));
      Cmin = min (min (R(i,j), G(i,j)), B(i,j));
      delta = Cmax - Cmin;
      if delta == 0
        H(i, j) = 0;
      else
        if Cmax == R(i, j)
          H(i, j) = 60 * mod (((G(i, j) - B(i, j))./delta),6);
        endif
        if Cmax == G(i, j)
          H(i, j) = 60*((B(i, j) - R(i, j))./delta + 2);
        endif
        if Cmax == B(i, j)
          H(i, j) = 60*((R(i, j)-G(i, j))./delta + 4);
        endif
      endif
      if Cmax == 0
        S(i, j) = 0;
      else
        S(i, j) = delta./Cmax;
      endif
      V(i, j) = Cmax;
    endfor
  endfor
  H = H / 360;
endfunction
