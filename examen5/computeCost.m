function J = computeCost(X, y, theta)
  m = length(y);
  J = 0;
  s = 0;
  i = 1;

  for i = 1:m
    h = dot(theta, X(i));
    si = -y(i)*log(h) - (1-y)*log(1-h)
    s = s + si
  end

  J = (1/(2*m)) * s;

end
