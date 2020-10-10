function code = Encode(p,mes)
  m=length(mes);
  k=length(p);
  start=0;
  range=zeros(k+1,1);
  span=1;
  for i=1:m
    for j=1:k
      range(j+1)=start+p(j)*span;
      start=range(j+1);
    endfor
    start=range(mes(i));
    span=range(mes(i)+1)-start;
    range(1)=start;
  endfor
  code = (2*start+span)/2;
endfunction