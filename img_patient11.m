clear all
close all
clc

% IMG View

filenameimg = ['11/pre/sweep_11c/2d/11c.2dus.00400sm.img'];
imginfo = analyze75info(filenameimg);
img = analyze75read(imginfo);

im = abs(hilbert(img));
bm_img = log(max(im,0.11));
flip = flipdim(bm_img ,2); 

rotated = imrotate(flip,180);
% subplot(121)
imagesc(rotated)
colormap(gray)

% MNC View

% [a b] = loadminc('../group1/group1/04/pre/sweep_4a/2d/4a.2dus.00205sm.mnc');
% im = abs(hilbert(a));
% bm_img = log(max(im,0.08));
% flip = flipdim(bm_img ,2);
% rotated = imrotate(flip,150);
% subplot(122)
% imagesc(rotated)
% colormap(gray)
