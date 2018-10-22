function main

    X = load('ocr3_7train.txt'); %loads the whole training data
    
    labels = load('ocr3_7trainLabels.txt'); %loads the whole training labels
    
    rows = get_rows(X,labels,3); %Gets the rows of the digit 3 from X.
    
    sigma = cov(rows); %Gets the covariance matix Sigma of data matrix X
    
    [r,c] = size(sigma);
    
    r = sqrt(r);
    
    [V,D] = eig(sigma); %Gets the eigen values and eigen vectors of Sigma
    
    [out,idx] = sort(D); %Sorted indices for eigen values
    
    % Getting first 4 eigen vectors corresponding to the highest eigen values
    
    rs_rev_1 = reshape(V(:,idx(end)),[r,r]);
    rs_rev_2 = reshape(V(:,idx(end-1)),[r,r]);
    rs_rev_3 = reshape(V(:,idx(end-2)),[r,r]);
    rs_rev_4 = reshape(V(:,idx(end-3)),[r,r]);
    
    % Displaying first 4 eigen vectors corresponding to the highest eigen values
    
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')

    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    % Getting first 4 eigen vectors corresponding to the lowest eigen values
    
    rs_rev_1 = reshape(V(:,idx(1)),[r,r]);
    rs_rev_2 = reshape(V(:,idx(2)),[r,r]);
    rs_rev_3 = reshape(V(:,idx(3)),[r,r]);
    rs_rev_4 = reshape(V(:,idx(4)),[r,r]);
    
    % Displaying first 4 eigen vectors corresponding to the lowest eigen values
    
    figure;
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')
    
    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    rows = get_rows(X,labels,7); %Gets the rows of the digit 7 from X.
    
    sigma = cov(rows); %Gets the covariance matix Sigma of data matrix X
    
    [r,c] = size(sigma);
    
    r = sqrt(r);
    
    [V,D] = eig(sigma); %Gets the eigen values and eigen vectors of Sigma
    
    [out,idx] = sort(D); %Sorted indices for eigen values
    
    % Getting first 4 eigen vectors corresponding to the highest eigen values
    
    rs_rev_1 = reshape(V(:,idx(end)),[r,r]);
    rs_rev_2 = reshape(V(:,idx(end-1)),[r,r]);
    rs_rev_3 = reshape(V(:,idx(end-2)),[r,r]);
    rs_rev_4 = reshape(V(:,idx(end-3)),[r,r]);
    
    % Displaying first 4 eigen vectors corresponding to the highest eigen values
    
    figure;
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')

    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    % Getting first 4 eigen vectors corresponding to the lowest eigen values
    
    rs_rev_1 = reshape(V(:,idx(1)),[r,r]);
    rs_rev_2 = reshape(V(:,idx(2)),[r,r]);
    rs_rev_3 = reshape(V(:,idx(3)),[r,r]);
    rs_rev_4 = reshape(V(:,idx(4)),[r,r]);
    
    % Displaying first 4 eigen vectors corresponding to the lowest eigen values
    
    figure;
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')
    
    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    X = zeros(10,1024);
    
    for i=1:10
        
       im = imread(strcat('t',num2str(i),'.jpg'));
       
       im = mat2gray(im);
       
       im = rgb2gray(im);
       
       im = imresize(im,[32,32]);
       
       X(i,:) = im(:);
        
    end
    
    cov_X = cov(X);
    
    [V,D] = eig(cov_X);
   
    [out,idx] = sort(D); %Sorted indices for eigen values
    
    % Getting first 4 eigen vectors corresponding to the highest eigen values
    
    rs_rev_1 = reshape(V(:,idx(end)),[32,32]);
    rs_rev_2 = reshape(V(:,idx(end-1)),[32,32]);
    rs_rev_3 = reshape(V(:,idx(end-2)),[32,32]);;
    rs_rev_4 = reshape(V(:,idx(end-3)),[32,32]);
    
    % Displaying first 4 eigen vectors corresponding to the highest eigen values
    
    figure;
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')

    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    % Getting first 4 eigen vectors corresponding to the lowest eigen values
    
    rs_rev_1 = reshape(V(:,idx(1)),[32,32]);
    rs_rev_2 = reshape(V(:,idx(2)),[32,32]);
    rs_rev_3 = reshape(V(:,idx(3)),[32,32]);
    rs_rev_4 = reshape(V(:,idx(4)),[32,32]);
    
    % Displaying first 4 eigen vectors corresponding to the lowest eigen values
    
    figure;
    subplot(2,2,1);
    imagesc(rs_rev_1);
    title('Eigen Vector 1')
    
    subplot(2,2,2);
    imagesc(rs_rev_2);
    title('Eigen Vector 2')
    
    subplot(2,2,3);
    imagesc(rs_rev_3);
    title('Eigen Vector 3')

    subplot(2,2,4);
    imagesc(rs_rev_4);
    title('Eigen Vector 4')
    
    
    
end

