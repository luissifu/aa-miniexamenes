function [J, grad] = costFunction(theta, X, y)
  m = length(y);

  J = 0;
  grad = zeros(size(theta));

  h = zeros(m,1);

  for i = 1:m
    z = X(i,:) * theta;
    h(i) = sigmoid(z);
  end

  s = sum(y .* log(h) + (1-y) .* log(1-h));
  J = (-1.0/m) * s;

  for j = 1:size(X,2)
    d = h-y;
    v = d'*X(:,j);
    grad(j) = (1.0/m)*sum(v);
  end
end
