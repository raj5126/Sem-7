#Ideal Low Pass Filter
pkg load image;
r = imread("my_gray_img.jpg");

subplot(2,3,1);imshow(r);title("Original Image");

[m,n]=size(r);
M=2*m;
N=2*n;
pad=zeros(M,N);
pad(1:m,1:n)=r;

subplot(2,3,2);imshow(uint8(pad));title("Step-1");

for i=1:M
  for j=1:N
    pad(i,j)=pad(i,j)*(-1)^(i-1+j-1);
  endfor
endfor

subplot(2,3,3);imshow(uint8(pad));title("Step-2");

F = fft2(pad);
H = zeros(M,N);
D0=50;
for i=1:M
  for j=1:N
    D=sqrt((i-M/2)^2+(j-N/2)^2);
    if(D<=D0)
      H(i,j)=1;
    else
      H(i,j)=0;
    endif      
  endfor
endfor

subplot(2,3,4);imshow(H);title("Step-3");

G=H.*F;
Gp = real(ifft2(G));
for i=1:M
  for j=1:N
    st(i,j)=Gp(i,j)*(-1)^(i-1+j-1);
  endfor
endfor

subplot(2,3,5);imshow(uint8(st));title("Step-4");

subplot(2,3,6);s=st(1:m,1:n);
imshow(uint8(s));title("Final Result");
