#Assume that you are working on some image enhancement application 
#which gives following
#functionality to user.
#1) Anti-aging: Removes the wrinkles on the input face image.
#2) Beautify: Removes facial marks.
#Take any of the color photo of a face and implement any (or both) 
#of the above functionality.

r = imread("wrinkle_face.jpg");
face = r(75:400,200:500,:);
subplot(1,2,1);
imshow(face);
title("Wrinkled face");

s = uint8(zeros(size(face)));
s(:,:,1) = antiaging(face(:,:,1));
s(:,:,2) = antiaging(face(:,:,2));
s(:,:,3) = antiaging(face(:,:,3));
subplot(1,2,2);
imshow(s);
title("wrinkleless face");
