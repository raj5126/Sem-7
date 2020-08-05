#Take any of your photograph, match it’s histogram with the histogram of image 
#‘test4.jpg’. plot histogram of original image, template and matched image for 
#all three channels.

r = imread('lab4Images/my_dark_photo.jpg');
ref = imread('lab4Images/test4.jpg');

subplot(1,2,1);
imshow(r);
subplot(1,2,2);
plot_hist(r);

figure;

subplot(1,2,1);
imshow(ref);
subplot(1,2,2);
plot_hist(ref);

figure;

L=256;
[m,n,d] = size(r);

[sf1, final(:,:,1)] = imhistmatch(r(:,:,1),ref(:,:,1));
[sf2, final(:,:,2)] = imhistmatch(r(:,:,2),ref(:,:,2));
[sf3, final(:,:,3)] = imhistmatch(r(:,:,3),ref(:,:,3));

final = uint8(final);

subplot(1,2,1);
imshow(uint8(final));
subplot(1,2,2);
plot_hist(final);