clear all
close all
clc

filenameimg = ['2d/4u.2dus.00010sm.img'];
imginfo = analyze75info(filenameimg);
img = analyze75read(imginfo);

im = abs(hilbert(img));
bm_img = log(max(im,0.08));

rotated = imrotate(bm_img,150);

imagesc(rotated)
colormap(gray)

