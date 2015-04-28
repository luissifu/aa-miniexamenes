function centroids = computeCentroids(X, idx, K)
  [m n] = size(X);
  centroids = zeros(K, n);

  for i = 1:K
    data = X(idx==i,:)
    if sum(data) > 0
      centroids(i,:) = mean(data,1);
    else
      centroids(i,:) = data;
    end
  end


end
