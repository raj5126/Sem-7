clear
clc
close all
bg = imread('1.jpg');
bg_and_fg = imread('2.jpg');

fg = bg_and_fg - bg;
imshow(fg);