function v = F2(x,N)
	v = 1;
	for i=1:N
		v = v + factorial(i)/(x^i);
	end
end
