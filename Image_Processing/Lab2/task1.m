#In a survaillance system, two frames of the captured videos are given as image
#'1.jpg' and '2.jpg' Apply image subtraction to locate the foreground.

im1 = imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/1.jpg");
im2 = imread("E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/2.jpg");

foreground = im1 - im2;
imshow(foreground);
title("Foreground");






