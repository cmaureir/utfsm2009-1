function r = F1(x,N)
	r = 0;
	s = 0;
	for n=1:N
		s = (x^n)/(n*factorial(n));
		if r == r + s
			break
		end
		r = r + s;
	end
	r = x*exp(-x)*r;
end
