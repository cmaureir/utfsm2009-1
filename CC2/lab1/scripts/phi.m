function p = phi(k, y, n)
	alpha = 1;
	beta = 1;
	delta = 1;
	gamma = 1;
	syms u;
	syms v;
	if (k==1)
		p = y(n-1,1) + (h/3)*(y(n-1,2) + 4*y(n,2) + v);
	elseif (k==2)
		p = y(n-1,2) - (h/3)*(alpha*(y(n-1,1)^3 + 4*y(n,1)^3 + u^3) + beta*(y(n-1,1) + 4*y(n,1) + u) + delta*(y(n-1,2) + 4*y(n,2) + v) - 2*gamma*(2 + cos(w*h))*cos(w*t));
	end
