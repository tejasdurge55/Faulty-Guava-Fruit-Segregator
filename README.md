# Faulty-Guava-Fruit-Segregator
An Artificially Intelligent Conveyer which helps in segregating between good and bad Guava Fruits.
It makes use of a FLIR Thermal Camera to capture thermal images of the fruit and then it compares those images with a dataset of Guava Thermal Images.
Later on,by comparing Real-Time images with Dataset Images,it is identified by the Matlab Softwar whether the fruit is good or bad and accordingly a signal is given so that the conveyer segregates the bad fruit from the rest.

# cropping_for_final_fruit.m
The above Matlab code is used to find the ROI(Region Of Intrest) of the fruit which helps us in removal of unnecessary objects from the image and improves the model accuracy.

# savetod_fruitfinal.m
The above Matlab code is used to create a dataset of Thermal images of the Guava Fruit and store it on the local computer.Later on these images will be used for Real-Time Thermal Image Comparison.

# fruit_Final.m
The above Matlab Code is the Main code for performing Image Acquisition and Comparing of images.After Comarison of Images an output signal is sent to Arduino UNO Board for further Segregation.

# segregator_code.ino
The above Arduino C code takes the Matlab signal as Input and according to the signal received,it instructs the Segregation Motor to segregate the fruit or not. 
