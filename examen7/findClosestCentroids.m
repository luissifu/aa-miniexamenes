function idx = findClosestCentroids(X, centroids)
  K = size(centroids, 1);
  idx = zeros(size(X,1), 1);

  m = length(X);

  for i = 1:m
    dist = zeros(K, 1);

    for j = 1:K
      temp = X(i,:) - centroids(j,:);
      dist(j) = temp * temp';
    end

    [_, min_dist] = min(dist);
    idx(i) = min_dist;
  end

end
