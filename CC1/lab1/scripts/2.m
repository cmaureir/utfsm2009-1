% Funcion que crea una matriz con coeficientes primos crecientes 

function m = matriz()
	primos = primes(227);
	k = 1;
	for i = 1:7
		for j = 1:7
			m(i,j) = primos(k);
			k = k + 1;
		end
	end
endfunction


% 2.1 Crear matriz 7x7 con coeficientes primos crecientes

m = matriz()

% 2.2 Encontrar valores propios de la matriz anterior

eig(m)

% 2.3 Implementar algoritmo que calcule valores propios de la matriz

roots(poly(m))


% 2.4 Compare los resultados obtenidos de su funcion contra la funcion provista por el software.
% Tomar la consideracion expecificada en el README

% funciona ok
a = rand(500)
eig(a)
roots(poly(m))

% provoca error la segunda forma
a = rand(1000)
eig(a)
roots(poly(a))

% 2.6 Encuentre los vectores linealmente independientes de la matriz generada en (2.1).

(rref(m'))'
