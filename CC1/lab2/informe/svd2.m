function [U,S,V] = SVD(A)
	H = A'*A;
	[V,D] = eig(H);
	n = size(V);
	n = n(1);
	for i = 1:n
		D2(i,i) = sqrt(abs(D(i,i)));
	end
	m = size(D2);
	m = m(1);
	for i = 1:m
		j = m+1-i;
		S(j,j) = D2(i,i);
	end
	for j = 1:n
		norma = 0;
		for i = 1:n
			norma = V(i,j)*V(i,j) + norma;
		end
		norma = sqrt(norma);
		for i = 1:n
			V(i,j) = V(i,j)/norma;
		end
	end
	s = size(V);
	s = s(2);
	for j = 1:s
		for i = 1:s
			tmp(i,j) = V(i, s+1-j);
		end
	end
	V = tmp;
	U = A*V*inv(S);
end

