function centroids = kMeansInitCentroids(X, K)
  centroids = zeros(K, size(X, 2));
  rand_idx = randperm(size(X,1));
  centroids = X(rand_idx(1:K),:);
end
