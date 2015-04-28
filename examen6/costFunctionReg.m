function [J, grad] = costFunctionReg(theta, X, y, lambda)
  m = length(y);
  J = 0;
  n = size(X,2);
  grad = zeros(n,1);
  h = zeros(m,1);

  for i = 1:m
      z = X(i,:) * theta;
      h(i) = sigmoid(z);
  end

  theta1 = theta(2:n,:);
  s = sum(y.*log(h) + (1-y).*log(1-h));
  J = (-1.0/m) * s + (lambda/(2.0*m)) * theta1' * theta1;

  for j = 1:n
      d = h-y;
      v = d' * X(:,j);
      grad(j) = (1.0/m) * sum(v);
      if j > 1
          grad(j) = grad(j) + (lambda/m) * theta(j);
      endif
  end
end
