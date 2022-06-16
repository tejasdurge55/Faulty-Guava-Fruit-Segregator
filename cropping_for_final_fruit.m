%code for cropping images  
clear all;
cam =webcam('FLIR USB Video');
x=snapshot(cam);
subplot(2,2,1);
imshow(x)
y=imcrop(x,[44.5 61.5 200 123]);
subplot(2,2,2);
imshow(y);

%%[J, rect] = imcrop(x); do this first,crop image,then right click and click on copy position 
%%[126.5 79.5 54 54] -- this is the copied position