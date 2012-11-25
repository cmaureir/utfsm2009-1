% 4.1 Implementacion de algoritmo SVD

printf("Una matriz cualesquiera: \n");

% 4
for i=1:4
	for j=1:4
		A(i,j) = rand()*10;
	end
end

A

function [U,S,V] = SVD(A)
	H = A'*A;
	[V,D] = eig(H);
	for i = 1:size(V)(1)
		D2(i,i) = sqrt(abs(D(i,i)));
	end
	for i = 1:size(D2)(1)
		j = size(D2)(1)+1-i;
		S(j,j) = D2(i,i);
	end
	for j = 1:size(V)(1)
		norma = 0;
		for i = 1:size(V)(1)
			norma = V(i,j)*V(i,j) + norma;
		end
		norma = sqrt(norma);
		for i = 1:size(V)(1)
			V(i,j) = V(i,j)/norma;
		end
	end
	s = size(V)(2);
	for j = 1:s
		for i = 1:s
			tmp(i,j) = V(i, s+1-j);
		end
	end
	V = tmp;
	U = A*V*inv(S);
endfunction

[u, s, v] = SVD(A)

[x, y, z] = svd(A)


% Se puede ver que la matriz S, es identica(pero si hago la resta s-y no da 0!!!!!) a la entregada por octave
