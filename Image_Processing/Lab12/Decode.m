function mes = Decode(p,code,m)
  k=length(p);
  start=0;
  range=zeros(k+1,1);
  span=1;
  mes=zeros(m,1);
  for i=1:m
    for j=1:k
      range(j+1)=start+p(j)*span;
      if(start<=code && range(j+1)>=code)
        mes(i)=j;
        span=range(j+1)-start;
        break;
      endif
      start=range(j+1);
    endfor
  endfor
endfunction

