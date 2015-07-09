clear all
close all
clc

[a b] = loadminc('../group3/04/04_postop_mri.mnc');
figure(2)
for i=1:size(a,3); imagesc(a(:,:,i)); pause;end