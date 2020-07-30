#Take your own black and white photo. Resize it to 256x256. Also consider given
#image 3.jpg. Demonstrate the logical operations like 'and', 'or', 'not' using these
#two images . Justify the results.

bw_im = imread('E:/Sem-7/Git-submission/Image_Processing/Lab1/my_image.jpg');
bw_im = im2bw(bw_im);
bw_im_resized = imresize(bw_im,[256,256]);

s_im = imread('E:/Sem-7/IP/LAB2/Lab_2_exercise_images/Lab_2_exercise_images/3.jpg');

#1). And Operation
and_im = and(bw_im_resized,s_im);
subplot(1,3,1)
imshow(and_im);
title("And")

#2). OR Operation
or_im = or(bw_im_resized,s_im);
subplot(1,3,2)
imshow(or_im);
title("OR")

#1). Not Operation
not_im = not(bw_im_resized);
subplot(1,3,3)
imshow(not_im);
title("Not")

