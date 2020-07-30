#Consider image 4.jpg, 5.jpg and 6.jpg as input and apply arithmatic operations on
#input image to generate 7.jpg as output image.

img1 = imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/4.jpg");
img2 = imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/5.jpg");
img3 = imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/6.jpg");

img2 = im2bw(img2);
img2_resized = imresize(img2,[357,512]); 
img2_reverse = not(img2_resized);
imshow(img2_reverse.*img3 + img2_resized.*img1);
title("Expected Image");


