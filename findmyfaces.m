function [ val, index ] = findmyfaces( M, K, U)
%FINDMYFACES Given a mean-differences matrix M, and a reference image K,
%and the eigenvectors of M, identify the index of the best image. May
%return -1 if no image is found fitting.
%   Detailed explanation goes here

    T = double(K(:));

    % Not sure if these are calculated right, they may throw an error
    refweights = U'*M;
    imgweights = U'*T;
    
    
    d = sum((refweights - repmat(imgweights, [1 length(refweights)])).^2);
    [val, index] = min(d);
    

end

