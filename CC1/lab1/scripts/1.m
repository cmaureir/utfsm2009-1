% Funcion que retorna un vector, en el que sus componentes son numeros primos aleatorios entre [1,211]

function v = vector()
	for i = 1:11
		while ((r = rand()*211) < 2)
		endwhile
		primos = primes(r);
		v(i) = primos(size(primos,2));
	end
endfunction

function n = vectorNormal(v)
	s = size(v)(2);
	m = 0;
	for i = 1:s-1
		n(i) = 1;
		m = m + v(i);
	end
	n(s) = (-m)/v(s);
endfunction

% 1.1 Generando vectores aleatorios R y S

printf("1.1 Generando vectores R y S: \n");

R = vector()
S = vector()

% 1.2 Realizando operaciones:

%No se puede hacer

%printf("RxS: \n");
%INVESTIGAR
%tal vez con gram schmidt

printf("R.S:\n")
dot(R,S)

printf("R.S':\n");
R*S'


% 1.3 Calcule un vector normal para el vector R y para el vector S

printf("Vector normal para R: \n");

N = vectorNormal(R)

printf("Vector normal para S: \n");

N = vectorNormal(S)

% Ojo: quizas no es lo mismo un vector normal a R que R normalizado :S
%printf("Vector ortonormal para R:\n");
%R/norm(R)

%printf("Vector ortonormal para S:\n");
%S/norm(S)

% 1.4 calcular el angulo entre los vectores R y S

r = acos((R*S')/(norm(R)*norm(S)))*180/pi;
printf("1.4 Angulo entre R y S: %d\n", r);

% 1.5 Generar 2 vectores con las 3 primeras columnas de R y S

for i = 1:3
	r(i) = R(i);
	s(i) = S(i);
end

printf("1.5 Vectores r y s generados por las 3 primeras columnas de R y S respectivamente: \n");

r
s

% Para plotearlos, usar plot3( vector1, ";nombre del vector1;", vector2, ";nombre del vector2;"
%		R = [37, 13, 163];
%		S = [139, 173, 43];
                x1 = [R(1,1),5*R(1,1)];
                y1 = [R(1,2),5*R(1,2)];
                z1 = [R(1,3),5*R(1,3)];
                x2 = [S(1,1),5*S(1,1)];
                y2 = [S(1,2),5*S(1,2)];
                z2 = [S(1,3),5*S(1,3)];
                plot3(x1,y1,z1,";R;",x2,y2,z2,";S;");
                xlabel('x');
                ylabel('y');
                zlabel('z');
                title_text=sprintf("Graficando los vectores 'R' y 'S'");
                title(title_text);
                print('../informe/imagenes/vectores.png','-dpng')
