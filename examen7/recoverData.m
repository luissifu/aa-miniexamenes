function X_rec = recoverData(Z, U, K)
  X_rec = zeros(size(Z, 1), size(U, 1));
  Ureduce = U(:,1:K);
  X_rec = Z * Ureduce';
end
