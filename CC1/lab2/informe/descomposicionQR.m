function M = descomposicionQR(A,calidad)
	[Q,R] = qr(double(A));
	Q = Q(:,1:calidad);
	R = R(1:calidad,:);
	M = Q*R;
end
