function out = prob(img)
    format long
    out = zeros(255,1);
    for i=0:255
        out(i+1) = sum(sum(img==i))/prod(size(img));  
    endfor
endfunction
