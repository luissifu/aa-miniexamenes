function [mu sigma2] = estimateGaussian(X)
  [m, n] = size(X);
  mu = zeros(n, 1);
  sigma2 = zeros(n, 1);

  mu = mean(X);
  sigma2 = mean((X - ones(m,1) * mu) .^ 2)';
  mu = mu';
end
