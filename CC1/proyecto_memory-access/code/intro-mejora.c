#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include "global.h"

int x[N], y[N], ii;
float theta[N];
int count[N];
float g[(int)(N*1.5)];
float sin6[N], cos6[N];

int main(int argc, char **argv)
{
	for(i=0;i<N;i++)
	{
		x[i] = i;
		y[i] = i;
		theta[i] = 6*random();
	}



	//	Almacenamos tiempo capturado
	initialTime = getTime();

	for(ii=0; ii<N; ++ii)
	{ 	
		sin6[ii] = sin(6*theta[ii]);
		cos6[ii] = cos(6*theta[ii]);
	}
	
	for(i=0; i<N; ++i)
		for(j=i+1; j<N; ++j)
		{
		Dx = x[i]-x[j];
		Dy = y[i]-y[j];
		r = sqrt(Dx*Dx+Dy*Dy);
		g[r] += cos6[i]*cos6[j]+sin6[i]*sin6[j];
		++count[r];
		}
	
	for (r = 0; r < MAX_R; r++)
		g[r] = g[r] / count[r];

	//	Calculando lo que ha tomado el calculo
	finalTime = getTime();

	//	Imprimimos resultados
	results();
	return 0;

}
