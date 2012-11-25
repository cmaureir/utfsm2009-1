function p = phi(k, Yant, Y, alpha, beta, delta, gamma, h, w, t)
	syms u
	syms v
	if (k == 1)
		p = Yant(1,1) + (h/3)*(Yant(2,1) + 4*Y(2,1) + v);
	else
		p = Yant(2,1) - (h/3)*(alpha*(Yant(1,1)^3 + 4*Y(1,1)^3 + u^3) + beta*(Yant(1,1) + 4*Y(1,1) + u) + delta*(Yant(2,1) + 4*Y(2,1) + v) - 2*gamma*(2 + cos(w*h))*cos(w*t));
	end
