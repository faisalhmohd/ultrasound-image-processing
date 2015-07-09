clear all
close all
clc

filename = ['2d/4u.3dus.img'];
imginfo = analyze75info(filename);
img = analyze75read(imginfo);

for i=1:size(img,3); imagesc(img(:,:,i)); pause;end