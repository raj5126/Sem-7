#Show the impact of multiple passes of the smoothing filter of same size. 
#Derive your conclusion on image quality and maximum number of passes of filter? 
#What happens if infinite(read veryhigh!) number of passes are applied? 
#Will it change image quality?

r = imread('my_image(512X512).jpg');
imshow(r);
title("Original Image");

figure;

s = standard_box_filter(r,3,3);
subplot(3,3,1);
imshow(s);
title("First Pass");

for i=2:9
  s = standard_box_filter(s,3,3);
  subplot(3,3,i);
  imshow(s);
  title(i);
endfor
