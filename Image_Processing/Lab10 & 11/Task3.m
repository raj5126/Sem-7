pkg load image;
r = imread("my_gray_img.jpg");
r = im2bw(r);
subplot(1,2,1);
imshow(r);
title("Image before hole filling");

[m,n] = size(r);
rc = not(r);
struct_ele = strel('square',3);
x0 = zeros(m,n);
x0(750,830) = 1;
x0(430,880) = 1;
x0(360,785) = 1;
x0(360,785) = 1;
x0(540,885) = 1;
x0(470,755) = 1;
x0(455,855) = 1;
x0(620,800) = 1;
x0(530,720) = 1;
x0(610,430) = 1;

dilate_image = imdilate(x0,struct_ele);
x1 = dilate_image.*rc;

while(!isequal(x0,x1))
  x0=x1;
  dilate_image = imdilate(x0,struct_ele);
  x1 = dilate_image.*rc;
endwhile

subplot(1,2,2); 
s = r+x1;
imshow(s);
title("Image after hole filling"); 
