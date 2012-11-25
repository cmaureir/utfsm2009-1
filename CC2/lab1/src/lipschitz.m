function [R] = lipschitz(epsilon, h, t, Yant, N, alpha, beta, delta, gamma, w)
	sym u;
	sym v;
	R = 0;
	Y = runge(delta, beta, alpha ,gamma, w, t, Yant(1,1), Yant(2,1));
	for i = 1:N
		t = t + h;
		phi1 = phi(1, Yant, Y, alpha, beta, delta, gamma, h, w, t);
		phi2 = phi(2, Yant, Y, alpha, beta, delta, gamma, h, w, t);
		syms u;
		syms v;
		z1 = Y(1,1) - subs(phi1,v,Y(2,1));
		z2 = Y(2,1) - subs(subs(phi2,v,Y(2,1)),u,Y(1,1));
		initialStep = 1;
		while ((abs(z1) > epsilon) || (abs(z2) > epsilon))
			phi1 = phi(1, Yant, Y, alpha, beta, delta, gamma, h, w, t);
			phi2 = phi(2, Yant, Y, alpha, beta, delta, gamma, h, w, t);
			if (initialStep == 1)
				R = [subs(phi1, v, Y(2,1)); subs(subs(phi2, v, Y(2,1)), u, Y(1,1))];
				initialStep = 2;
			else
				R = [subs(phi1, v, R(2,1)); subs(subs(phi2, u, R(1,1)), v, R(2,1))];
			end
			z1 = R(1,1) - subs(phi1,v,R(2,1));
			z2 = R(2,1) - subs(subs(phi2, u, R(1,1)), v, R(2,1));
		end
		Yant = Y;
		Y = R;
	end	
