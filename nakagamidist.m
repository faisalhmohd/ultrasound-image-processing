clear all
close all
clc

% Reading the Image

filenameimg = ['04/pre/sweep_4c/2d/4c.2dus.00410sm.img'];
imginfo = analyze75info(filenameimg);
img = analyze75read(imginfo);

% Cropping the Image
croppedimg = img(325:390,320:400);

% B-modding it for visibility
croppedim = abs(hilbert(croppedimg));
cropped_bm_im = log(max(croppedim,0.05));

% Displaying it
figure(1)
one = subplot(121);
imagesc(cropped_bm_im)
colormap(one, gray)

% Histogramming
two = subplot(122);
surf(abs(cropped_bm_im))
% bar3(abs(cropped_bm_im))
colormap(two, summer)

% Extracting row for Nakagami dist. analysis
extractrow = double((croppedimg(35,:))+0.1)
figure(2)
h = histfit(extractrow,10,'nakagami')


