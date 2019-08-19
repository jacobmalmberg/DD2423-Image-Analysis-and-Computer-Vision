# DD2423-Image-Analysis-and-Computer-Vision
Completed assignments for course DD2423. Course information can be found at https://www.kth.se/student/kurser/kurs/DD2423?l=en. 

When it comes to image analysis, the course included: signal theoretical methods, filtering, image enhancement, image reconstruction, segmentation, classification, representation.

As for computer vision, it included: multiscale representation, detection of edges and other distinctive features. Stereo and multi-camera systems. Object recognition, morphology.


## Assignment 1.

The instructions can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%201/bildat_lab1_eng.pdf) and the full report can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%201/bildat_lab1_answers.pdf).

The first assignment covers frequency analysis using the Fourier transform (1d as well as 2d) as well as designing and using a smoothing filter for Gaussian convolutions. Various filters were applied to different kinds of noise and the results were analyzed. The effects of smoothing on different image resolutions generated by subsampling were studied.

### Sample results.

Fourier analysis with the real image to the left and the corresponding fourier spectrum to the right.
<img src='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%201/fourier.png'>

Gaussian convolution

<img src='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%201/gauss.png'>

## Assignment 2.

The instructions can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%202/bildat_lab2_eng.pdf) and the full report can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%202/bildat_lab2_answers.pdf).

The second assignment covers differential geometry based edge detection and the Hough transform. These operations were applied to learn the characteristics of the methods, including how important the choice of scale is for edge detection.

### Sample results.

Edge detection using central difference operator at different thresholds.
<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%202/central_diff.png'>

Hough transform

<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%202/hough.png'>

## Assignment 3.

The instructions can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/bildat_lab3_eng.pdf) and the full report can be found [here](https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/bildat_lab3_answers.pdf).

The second assignment covers image segmentation and methods that deal with spatial coherence in different ways. Methods include K-means clustering, Mean-shift segmentation, Normalized cut, and graph cut.

### Sample results.

K-means clustering. The black circle highlights that no superpixel cover both halves.

<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/kmeans.png'>

Mean-shift segmentation

<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/meanshift.png'>

Normalized cut

<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/ncut.png'>

Graph cut

<img src ='https://github.com/jacobmalmberg/DD2423-Image-Analysis-and-Computer-Vision/blob/master/Assignment%203/graphcut.png'>

