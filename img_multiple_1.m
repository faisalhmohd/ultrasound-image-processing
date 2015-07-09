clear all
close all
clc

for j=1:2
    filename = ['2d/4u.2dus.00' sprintf('%03d',400-j) 'sm.img'];
    imginfo = analyze75info(filename);
    img = analyze75read(imginfo);
    figure(1)
    subplot(1,2,j)
    imshow(img)
end
