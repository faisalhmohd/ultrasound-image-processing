clear all
close all
clc

folder = '../group1/group1/';
patients = [ '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14'];

choosen_patient = '1';

sweep_type = 'pre'; % 'post' 'pre'
sweep_part = 'a'; % 'a' 'b' 'c' 'd' 'e'

sweep_folder = strcat(folder, '01/', sweep_type, '/sweep_', choosen_patient, sweep_part, '/2d/');

myFiles = dir(fullfile(sweep_folder,'*.img')); %gets all txt files in struct
for k = 1:length(myFiles)
  imginfo = analyze75info(strcat(sweep_folder, myFiles(k).name));
  img = analyze75read(imginfo);
  fig = figure(1);
  imshow(img);
  saveas(fig, strcat(myFiles(k).name, '.jpg'))
end