close all
clear all
clc

filename = ['2d/4u.2dus.00001sm.img'];
imginfo = analyze75info(filename);
img = analyze75read(imginfo);

imshow(img)