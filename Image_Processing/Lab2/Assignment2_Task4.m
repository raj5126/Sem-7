clear
clc
close all
pkg load image

% Using the grayscale image created in Lab 1 
my_gs = imread('grayscale.jpg');
neg_trans = 255 - my_gs;
imshow(neg_trans);