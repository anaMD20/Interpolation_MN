function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================
      [m n nr_colors] = size(f);
      if(x-1<1 || x+1>n)
        r = 0;
        return;
      endif
    % TODO: Calculeaza derivata.
      df = f(y,x+1)-f(y,x-1);
      r = df/2;
endfunction