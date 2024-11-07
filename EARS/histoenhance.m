imgFiles = dir('*.jpg') ; 
N = length(imgFiles) ; 
disp(N); 
for i=1:N 
    img = imgFiles(i).name ; 
    I = imread(img);
    J = histeq(I); % apply histogram equalization ...
   figure
   subplot(1,3,1)
   imshow(J)
   subplot(1,3,2:3)
   imhist(J)
   imwrite(J,img)
