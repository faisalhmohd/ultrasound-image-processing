clear all
close all
clc

[a b] = loadminc('../group3/11/11_tumor.mnc');
figure(2)
for i=1:size(a,3); imagesc(a(:,:,i));colormap(gray); pause;end