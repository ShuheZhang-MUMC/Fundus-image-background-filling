# RetImgFilling
This MATLAB code processes a retinal image and fills the black background in a reflective manner

A natural train of thought to achieve reflective filling has following 4 procedures: ↓

(1) First we draw a line, say L that connects the center point O of the image and the point P where the color needs to be padded; 

(2) Next, we pinpoint the intersection point X between the line and the edge of M; 

(3) Then, we note the distance between P and X, and find the point Q which locates also on L and is symmetrical to P with respect to X;

(4) Finally we copy the color at point Q to that of point P in the raw image I. 

This MATLAB code achieves abovementioned step for digital fundus images.
