clear all;
clear a;
a = arduino('COM6', 'Uno');
cam =webcam('FLIR USB Video');
ref=imread("D:\flirmatlab\image_0037.jpg");

i=11;
while i>10
clear a;
a = arduino('COM6', 'Uno');
writeDigitalPin(a, 'D6', 0);%output to IDE(uno)arduino
writeDigitalPin(a, 'D5', 0);%output to IDE(uno)arduino
d=readVoltage(a,'A1');%input to matlab arduino
e=readVoltage(a,'A3');%input to matlab arduino
disp("in while loop")
if d==5
    ssimfi=0;
    n=20;
    for z = 1 : n
    c=snapshot(cam);
    b=imcrop(c,[116.5 64.5 150 128]);
    ssimvalue(z) = ssim(b,ref);
    ssimfi = ssimfi + ssimvalue(z);
    end

    ssimfinal=ssimfi/n
    
    if ssimfinal<0.80 & ssimfinal>0.40;
    clear a;
    a = arduino('COM6', 'Uno');
    writeDigitalPin(a, 'D6', 1);
    pause(3);
    writeDigitalPin(a, 'D6', 0);
    pause(3);
    elseif ssimfinal<0.40
    clear a;
    a = arduino('COM6', 'Uno');
    writeDigitalPin(a, 'D5', 1);
    pause(3);
    writeDigitalPin(a, 'D5', 0);
    pause(3)
    else
   clear a;
    a = arduino('COM6', 'Uno');
    writeDigitalPin(a, 'D6', 0);
    writeDigitalPin(a, 'D5', 0);
    end
elseif e==5
    break
else
    clear a;
    a = arduino('COM6', 'Uno');
    writeDigitalPin(a, 'D6', 0);
    writeDigitalPin(a, 'D5', 0);   
    
end
    
end