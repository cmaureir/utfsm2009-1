
% Funciones:
	% Generar las matrices de transformación en R^2
	function r = R(t)
		r = [cos(t), -sin(t); sin(t), cos(t)];
	endfunction

	% Generar las matrices de transformación en R^3 (elegi una de las matrices básicas para ello)
	function r = R3(t)
		r = [1, 0, 0; 0, cos(t), -sin(t); 0, cos(t), sin(t)];
	endfunction


	% Aplicar las transformación m al vector v en R^2
	function v2 = transforma2(v,m)
		fila=[0,0];
		for i = 1:2
			for j = 1:2
				fila(i)= m(i,j)*v(i) + fila(i);
			end
		end
		v2 = fila;
	endfunction

	% Aplicar las transformación m al vector v en R^3
	function v3 = transforma3(v,m)
		fila=[0,0,0];
		for i = 1:3
			for j = 1:3
				fila(i)= m(i,j)*v(i) + fila(i);
			end
		end
		v3 = fila;
	endfunction

%3.1
printf("3.1 Generando y graficando un Vector en R^2\n")
	v = [rand(1),rand(1)]

	% Graficamos 
		x = [v(1,1),5*v(1,1)];
		y = [v(1,2),5*v(1,2)];
		plot(x,y,";V;")
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V'");
		title(title_text);
		print('../informe/imagenes/3_v.png','-dpng')
			

% 3.2
printf("3.2 Aplicamos las transformaciones propuestas al vector\n")
	% Generamos las matrices de transformación
	a = R(17);
	b = R(31);
	c = R(47);
	d = R(61);
	e = R(97);

	% Hacemos las transforamciones a v
	printf("Transformación R(17):\n")
	va=transforma2(v,a)
		x = [va(1,1),5*va(1,1)];
		y = [va(1,2),5*va(1,2)];
		plot(x,y,";R(17) aplicada a V;");
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(17)");
		title(title_text);
		print('../informe/imagenes/3_va.png','-dpng')

	printf("Transformación R(31):\n")
	vb=transforma2(v,b)
		x = [vb(1,1),5*vb(1,1)];
		y = [vb(1,2),5*vb(1,2)];
		plot(x,y,";R(31) aplicada a V;");
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(31)");
		title(title_text);
		print('../informe/imagenes/3_vb.png','-dpng')

	printf("Transformación R(47):\n")
	vc=transforma2(v,c)
		x = [vc(1,1),5*vc(1,1)];
		y = [vc(1,2),5*vc(1,2)];
		plot(x,y,";R(47) aplicada a V;");
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(47)");
		title(title_text);
		print('../informe/imagenes/3_vc.png','-dpng')

	printf("Transformación R(61):\n")
	vd=transforma2(v,d)
		x = [vd(1,1),5*vd(1,1)];
		y = [vd(1,2),5*vd(1,2)];
		plot(x,y,";R(61) aplicada a V;");
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(61)");
		title(title_text);
		print('../informe/imagenes/3_vd.png','-dpng')

	printf("Transformación R(97):\n")
	ve=transforma2(v,e)
		x = [ve(1,1),5*ve(1,1)];
		y = [ve(1,2),5*ve(1,2)];
		plot(x,y,";R(97) aplicada a V;");
		xlabel('x');
		ylabel('y');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(97)");
		title(title_text);
		print('../informe/imagenes/3_ve.png','-dpng')


% el efecto es que claramente lo unico que pasa es que el vector va rotando.

%3.3 
printf("3.3 Realizar lo mismo en R^3\n")
	% Generamos el vector v3 y las transformaciones en R^3
	v3=[rand(1),rand(1),rand(1)]
		x = [v3(1,1),5*v3(1,1)];
		y = [v3(1,2),5*v3(1,2)];
		z = [v3(1,3),5*v3(1,3)];
		plot3(x,y,z,";V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V'");
		title(title_text);
		print('../informe/imagenes/3_v3.png','-dpng')
	a3 = R3(17);
	b3 = R3(31);
	c3 = R3(47);
	d3 = R3(61);
	e3 = R3(97);

	% Hacemos las transforamciones a v sobre el eje x
	printf("Transformación R(17):\n")
	va=transforma3(v3,a3)
		x = [va(1,1),5*va(1,1)];
		y = [va(1,2),5*va(1,2)];
		z = [va(1,3),5*va(1,3)];
		plot3(x,y,z,";R(17) aplicada a V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(17)");
		title(title_text);
		print('../informe/imagenes/3_va3.png','-dpng')

	printf("Transformación R(31):\n")
	vb=transforma3(v3,b3)
		x = [vb(1,1),5*vb(1,1)];
		y = [vb(1,2),5*vb(1,2)];
		z = [vb(1,3),5*vb(1,3)];
		plot3(x,y,z,";R(31) aplicada a V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(31)");
		title(title_text);
		print('../informe/imagenes/3_vb3.png','-dpng')

	printf("Transformación R(47):\n")
	vc=transforma3(v3,c3)
		x = [vc(1,1),5*vc(1,1)];
		y = [vc(1,2),5*vc(1,2)];
		z = [vc(1,3),5*vc(1,3)];
		plot3(x,y,z,";R(47) aplicada a V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(47)");
		title(title_text);
		print('../informe/imagenes/3_vc3.png','-dpng')

	printf("Transformación R(61):\n")
	vd=transforma3(v3,d3)
		x = [vd(1,1),5*vd(1,1)];
		y = [vd(1,2),5*vd(1,2)];
		z = [vd(1,3),5*vd(1,3)];
		plot3(x,y,z,";R(61) aplicada a V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(61)");
		title(title_text);
		print('../informe/imagenes/3_vd3.png','-dpng')

	printf("Transformación R(97):\n")
	ve=transforma3(v3,e3)
		x = [ve(1,1),5*ve(1,1)];
		y = [ve(1,2),5*ve(1,2)];
		z = [ve(1,3),5*ve(1,3)];
		plot3(x,y,z,";R(97) aplicada a V;");
		xlabel('x');
		ylabel('y');
		zlabel('z');
		title_text=sprintf("Graficando el Vector 'V' transformado por R(97)");
		title(title_text);
		print('../informe/imagenes/3_ve3.png','-dpng')
