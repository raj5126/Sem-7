#Observe border of image for results in (a). Justify the reason for dark borders. 
#Comment on thickness of the border and filter size. Suggest a way to solve the issue. 
#Implement your suggestion and show the code and results.

r = imread('my_image(512X512).jpg');

subplot(1,2,1);
s1=standard_box_filter(r,7,7);
imshow(s1);
title("Blur Image with border");

subplot(1,2,2);
s2 = border_solved_filter(r,7,7);
imshow(s2);
title("Blur Image with no border");