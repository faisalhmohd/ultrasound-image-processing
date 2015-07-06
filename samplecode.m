clear all
close all
clc

% [a b] = loadminc('2d/sample.mnc');
% b

for j=1:20
    filename = ['2d/4u.2dus.00' sprintf('%03d',j) 'sm.img'];
    imginfo = analyze75info(filename);
    img = analyze75read(imginfo);
    subplot(4,5,j)
    imshow(img)
end

