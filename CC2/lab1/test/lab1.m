function lab1()
	epsilon = 10^(-3); alpha = 1; beta = 1; delta = 1; gamma = 1; w = 1;
	h = 0.1;
	t = 0;
	N = 100;
	Yant = [1;1]; 
	fprintf('Iniciando Newton...\n');
	t0 = cputime();
	newton2(epsilon, h, t, Yant, N, alpha, beta, delta, gamma, w)
	t1 = cputime();
	fprintf('Newton terminado en %f [s]\n', t1-t0);
	fprintf('Iniciando Lipschitz...\n');
	t0 = cputime();
	lipschitz(epsilon, h, t, Yant, N, alpha, beta, delta, gamma, w)
	t1 = cputime();
	fprintf('Lipschitz terminado en %f [s]\n', t1-t0);      