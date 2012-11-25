function M = descomposicion(A,calidad)
	[U,E,V] = svd2(A);
	V = V';
	U = U(:,1:calidad);
	E = E(1:calidad,1:calidad);
	V = V(1:calidad,:);
	M = U*E*V;
end
