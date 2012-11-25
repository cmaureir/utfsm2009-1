function [R] = newton2(epsilon, h, t, Yant, N, alpha, beta, delta, gamma, w)
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
			diff1u = subs(diff(phi1,u),u,Y(1,1));
			diff1v = subs(diff(phi1,v),v,Y(2,1));
			diff2v = subs(subs(diff(phi2,v),v,Y(2,1)),u,Y(1,1));
			if (initialStep == 1)
				R = [Y(1,1);Y(2,1)] + inv([1 - diff1u, -diff1v; -diff1u, 1 - diff2v]) * [-z1;-z2];
				initialStep = 2;
			else
				R = R + inv([1 - diff1u, -diff1v; -diff1u, 1 - diff2v]) * [-z1;-z2];
			end
			phi1 = phi(1, Yant, Y, alpha, beta, delta, gamma, h, w, t);
			phi2 = phi(2, Yant, Y, alpha, beta, delta, gamma, h, w, t);
			z1 = R(1,1) - subs(phi1,v,R(2,1));
			z2 = R(2,1) - subs(subs(phi2,v,R(2,1)),u,R(1,1));	
		end
		Yant = Y;
		Y = R;
	end	
