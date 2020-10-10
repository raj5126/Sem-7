pkg load image;
r = imread("gray_scale_img.jpg");
r = imresize(r,[256,256]);
p = prob(r);
num_ele = 3;
seg_img = round(rand(1)*(min(size(r)))-num_ele-1)+1;
segment = r(seg_img:seg_img+num_ele-1,seg_img:seg_img+num_ele-1);
segment
fg = true;
s_index = 1;
for i=1:num_ele
    if fg == true
      msg(s_index:s_index+num_ele-1) = segment(i,:);  
    else
      msg(s_index:s_index+num_ele-1) = flip(segment(i,:));
    endif
    s_index = s_index + num_ele;
    fg = not(fg);
endfor
msg
encode_code = Encode(p,msg)
decode = Decode(p,encode_code,length(msg))
