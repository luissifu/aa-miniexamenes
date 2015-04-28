function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  m = length(y);
  m_t = length(theta);
  J_history = zeros(num_iters, 1);
  theta_temp = zeros(m_t, 1);

  for iter = 1:num_iters
    % calcular nueva theta
    for k = 1:m_t
      s = 0;
      for i = 1:m
        h = theta(1) + theta(2) * X(i,2);
        s = s + (h - y(i)) * X(i,k);
      end
      theta_temp(k) = theta(k) - alpha*(1/m)*s;
    end
    % reemplazar theta
    theta = theta_temp;
    J_history(iter) = computeCost(X, y, theta);
  end

end
