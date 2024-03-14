function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    [m n nr_colours] = size(f);
    if(x-1<1 || x+1>n)
      r=0;
      return;
    endif
    if(y-1<1 || y+1>m)
      r = 0;
      return;
    endif
    % TODO: Calculeaza derivata.
    df1 = f(y-1,x-1)+f(y+1,x+1);
    df2 = f(y-1,x+1)+f(y+1,x-1);
    dif = df1-df2;
    r = dif/4;
endfunction