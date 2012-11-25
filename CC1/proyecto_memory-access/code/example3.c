#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "global.h"
#include "tabla.h"

struct DataStruct
{
	int x, y;
	int cos6, sin6;
} data[N];

struct AccumulationStruct
{
	int count;
	float g;
} accum[MAX_R];

int ii;
float theta[N];
int contador=0;

int main(int argc, char **argv)
{

	for(i=0;i<N;i++)
	{
		data[i].x = i;
		data[i].y = i;
		theta[i] = 6*random();
	}

	//	Almacenamos tiempo capturado
	initialTime = getTime();

	for (ii = 0; ii < N; ii++)
	{
		data[ii].cos6 = cos(6*theta[ii]);
		data[ii].sin6 = sin(6*theta[ii]);
	}
	
	for(i=0; i<N; ++i)	
		for(j=i+1; j<N; ++j)
		{
			Dx = data[i].x - data[j].x;
			Dy = data[i].y - data[j].y;
			root(Dx*Dx + Dy*Dy, r)
			accum[r].g += data[i].cos6 * data[j].cos6 + data[i].sin6 * data[j].sin6;
			++accum[r].count;
			contador++;
		}
	printf("contador: %d",contador);

	for (r = 0; r < MAX_R; r++)
		accum[r].g = accum[r].g / accum[r].count;

	//	Calculando lo que ha tomado el calculo
	finalTime = getTime();
	
	//	Imprimimos resultados
	results();
	return 0;

}
