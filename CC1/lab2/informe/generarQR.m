function generarQR(calidad)
	[A,map] = imread('homero.bmp');
	RGB = ind2rgb(A,map);
	R = RGB(:,:,1);
	G = RGB(:,:,2);
	B = RGB(:,:,3);

	R = descomposicionQR(R,calidad);
	G = descomposicionQR(G,calidad);
	B = descomposicionQR(B,calidad);

	I = cat(3,R,G,B);
	imshow(I);
