%%
tools = few256;
simple_kernel = [1 0 -1];
simple_y_kernel = simple_kernel'; 
forward_kernel = [1 -1];
test_kernel = [0 0 0 0 0; 0 1 0 -1 0; 0 0 0 0 0];

testpic = conv2(tools, simple_kernel, 'valid');
testpic2 = conv2(tools, test_kernel, 'valid');

robert = [-1 0; 0 1];
robert1 = [0 -1; 1 0];

sobelx = [-1 0 1; -2 0 2; -1 0 1];
sobely = [-1 -2 -1; 0 0 0; 1 2 1];
sobelxtools = conv2(tools, sobelx, 'same');
sobelytools = conv2(tools, sobely, 'valid');


dxtools = conv2(tools, simple_kernel, 'valid');
dx1tools = filter2(forward_kernel, tools, 'valid');
dytools = conv2(tools, simple_y_kernel, 'valid')

robertstools1 = conv2(tools, robert, 'same');
robertstools = conv2(robertstools1, robert1, 'same');


subplot(1,3,1)
showgrey(tools);
title('tools');
subplot(1,3,2)
showgrey(dxtools);
title('dxtools');
subplot(1,3,3)
showgrey(dytools);
title('dytools');