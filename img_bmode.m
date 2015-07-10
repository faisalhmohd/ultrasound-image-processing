clear all
close all
clc

filenameimg = ['04/post/sweep_4u/2d/4u.2dus.00001sm.img'];
imginfo = analyze75info(filenameimg);
img = analyze75read(imginfo);

im = abs(hilbert(img));
bm_img = log(max(im,0.08));

subplot(121)
imagesc(bm_img)
colormap(gray)
subplot(122)
imagesc(img)



