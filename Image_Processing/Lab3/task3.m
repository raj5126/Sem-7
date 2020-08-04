<<<<<<< HEAD
#Apply thresholding to any of your gray scale photo.
r = imread('my_gray_scale.jpg');
s = NaN(size(r));
row = size(r,1);
col = size(r,2);
for i=1:row,
  for j=1:col,
    if (r(i,j)>150)
      s(i,j) = 1;
    else
      s(i,j) = 0;
    endif
   end
end
imshow(s);

=======
#Apply thresholding to any of your gray scale photo.
r = imread('my_gray_scale.jpg');
s = NaN(size(r));
row = size(r,1);
col = size(r,2);
for i=1:row,
  for j=1:col,
    if (r(i,j)>150)
      s(i,j) = 1;
    else
      s(i,j) = 0;
    endif
   end
end
imshow(s);

>>>>>>> 52eb1ce9fe3315803b950a3a56fd0600e8699287
