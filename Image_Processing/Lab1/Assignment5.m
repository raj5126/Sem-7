#Take your own photo
im = imread("my_image.jpg");

#1. Grayscale image
im_gray_scale = rgb2gray(im);
subplot(2,3,1)
imshow(im_gray_scale);
title("Grayscale image");
imwrite(im_gray_scale,"my_gray_scale.jpg");

#2. Black and White image
im_bw = im2bw(im);
subplot(2,3,2)
imshow(im_bw);
title("Black and white image");
imwrite(im_bw,"my_bw_image.jpg");

#3. Over Exposed image
im_over_exposed = im_gray_scale + 70;
subplot(2,3,3)
imshow(im_over_exposed);
title("Over exposed image");
imwrite(im_over_exposed,"my_over_exposed_image.jpg");

#4. Under Exposed image
im_under_exposed = im_gray_scale - 50;
subplot(2,3,4)
imshow(im_under_exposed);
title("Under exposed image");
imwrite(im_under_exposed,"my_under_exposed_image.jpg");

#5. Keep your face only-crop rest of the image.
im_face = im(100:650,615:1350);
subplot(2,3,5)
imshow(im_face);
title("Face-crop image");
imwrite(im_face,"my_face.jpg");

#6. Resize the image to 256*256
im_resize = imresize(im,[256 256]);
subplot(2,3,6)
imshow(im_resize);
title("Resized image");
imwrite(im_resize,"my_resized_img.jpg");