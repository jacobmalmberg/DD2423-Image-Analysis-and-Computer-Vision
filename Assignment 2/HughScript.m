% Testing environment
tic 
testimage1 = triangle128;
smalltest1 = binsubsample(testimage1);

testimage2 = houghtest256;
smalltest2 = binsubsample(binsubsample(testimage2())); 



pic = testimage1;
scale = 1;
gradmagnthreshold = 25;
nrho = 100;
ntheta = 100;
nlines = 3;
verbose = 0;

[linepar acc] = houghedgeline(pic, scale, gradmagnthreshold, nrho, ntheta, nlines, 'bit');

D = sqrt(size(pic, 1)^2 + size(pic, 2)^2);

toc

subplot(1,2,2)
showgrey(acc)



