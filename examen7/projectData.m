function Z = projectData(X, U, K)
  Z = zeros(size(X, 1), K);
  m = length(X);

  Ureduce = U(:,1:K);
  Z = X * Ureduce;
end
