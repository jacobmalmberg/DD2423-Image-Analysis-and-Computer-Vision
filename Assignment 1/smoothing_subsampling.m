img = phonecalc256;
smoothimg = img;
N=5;

for i=1:N
    if i>1  % generate subsampled versions
        img = rawsubsample(img);
        smoothimg =  ideal(smoothimg, 0.25); % <call_your_filter_here>(smoothing, <params>);
        smoothimg = rawsubsample(smoothimg);
    end
    subplot(2,N,i)
    showgrey(img)
    subplot(2,N,i+N)
    showgrey(smoothimg)
end


