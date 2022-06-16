%code for saving images to D drive folder
clear all;
cam =webcam('FLIR USB Video');
savepath = 'D:\flirmatlab';  %the folder
nametemplate = 'image_%04d.jpg';  %name pattern
imnum = 0;        %starting image number
for K = 1 : 50    %if you want to do this 50 times
   Image =snapshot(cam); ... %capture the image
   YourImage=imcrop(Image,[116.5 64.5 150 128])
   imnum = imnum + 1;
   thisfile = sprintf(nametemplate, imnum);  %create filename
   fullname = fullfile(savepath, thisfile);  %folder and all
   imwrite( YourImage, fullname);  %write the image there as jpg
end