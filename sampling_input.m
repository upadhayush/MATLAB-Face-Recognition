clc
clear all
close all
warning off;
c=webcam;
t=0;
counter=150;
faceDetector=vision.CascadeObjectDetector;
while true
    a=c.snapshot;
    var =step(faceDetector,a);
    if(sum(sum(var))~=0)
    if(t>=counter)
        break;
    else
    as=imcrop(a,var(1,:));
    as=imresize(as,[227 227]);
    filename=strcat(num2str(t),'.bmp');
    imwrite(as,filename);
    t=t+1;
    imshow(as);
    drawnow;
    end
    else
        imshow(a);
        drawnow;
    end
end