#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include "global.h"

int x[N], y[N];
float theta[N];
int count[N];
float g[(int)(N*1.5)];

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

	//	Now, accumulate data for all pairs of
	//	points (i,j).
	for(i=0; i<N; ++i)	//for each i < N
		for(j=i+1; j<N; ++j)	//for each j < N
		{
			Dx = x[i]-x[j];
			Dy = y[i]-y[j];
			r = sqrt(Dx*Dx + Dy*Dy);
			g[r] += cos(6*(theta[i]-theta[j]));
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
