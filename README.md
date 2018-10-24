# Eigen-Faces-and-Digits-in-Matlab

# DISPLAY EIGEN DIGITS

1. Get the rows of the digit 3 from X. 
2. Get the covariance matix Sigma of data matrix X
3. Get the eigen values and eigen vectors of Sigma
4. Reshape the the first 4 eigen vectors corresponding to the highest eigen values and display them using imagesc.
5. Reshape the the last 4 eigen vectors corresponding to the lowest eigen values and display them using imagesc.
6. Repeat the above for digit 7

# DISPLAY EIGEN FACES

1. Take around 8-10 photographs.
2. Convert the images to grayscale and crop them to a more manageable size, e.g., 32x32.
3. Using reshape, reshape all 2D images to vectors and make a data matrix X with each row as a vector.  Each column would then represent a pixel value at a certain coordinate in the image.
4. Get the covariance matrix of X and its corresponding eigen values and eigen vectors.
5. From the eigen vectors display the eigen images corresponding to the highest and lowest eigen values. 
