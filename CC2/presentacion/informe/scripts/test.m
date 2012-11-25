function [v,w] = test(n,m,N)
	for x=n:m
		v(x) = F1(x,N);
		w(x) = F2(x,N);
	end
	plot(n:m,v(n:m),'-',n:m,w(n:m),'-');
end
