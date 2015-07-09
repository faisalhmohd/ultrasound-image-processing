clear all
close all
clc

for j=1:20
    filename = ['2d/4u.2dus.00' sprintf('%03d',30+j) 'sm.img'];
    imginfo = analyze75info(filename);
    img = analyze75read(imginfo);
    im = abs(hilbert(img));
    bm_img = log(max(im,0.08));
    rotated = imrotate(bm_img,180);
    subplot(5,4,j)
    imagesc(rotated)
    colormap(gray)
end