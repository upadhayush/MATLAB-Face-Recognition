clc;close;clear
c=webcam;
load myNet1;
fdet=vision.CascadeObjectDetector;
while true
    a=c.snapshot;
    inp =step(fdet,a);
    if(sum(sum(inp))~=0)
     as=imcrop(a,inp(1,:));
    as=imresize(as,[227 227]);
    label=classify(myNet1,as);
    image(a);
    title(char(label));
    drawnow;
    else
        image(a);
        title('No Face is present');
    end
end