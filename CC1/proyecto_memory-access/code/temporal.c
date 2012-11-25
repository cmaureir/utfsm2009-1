#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "global.h"
#include "tabla.h"

struct DataStruct
{
	int x, y;
	float cos6, sin6;
} data[N];

struct AccumulationStruct
{
	int count;
	float g;
} accum[(int)(N*1.5)];

int ii;
int A,B,C,blocksize =1000;
int flag;
float theta[N];

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

	for(ii = 0; ii < N; ii++)
	{
		data[ii].cos6 = cos(6*theta[ii]);
		data[ii].sin6 = sin(6*theta[ii]);
	}

	for(A=0; A<N; A+=blocksize)
	{
		C=A;
		for(B=A,flag=1; B<N; B+=blocksize,flag=0)
		{
			for(i=A; i<A+blocksize; ++i)
			{	
				if(flag)
				{
					C++;
					for(j=C; j<B+blocksize; ++j)
					{
						Dx = data[i].x - data[j].x;
						Dy = data[i].y - data[j].y;
						r = sqrt(Dx*Dx + Dy*Dy);
						accum[r].g += data[i].cos6 * data[j].cos6 + data[i].sin6 * data[j].sin6;
						++accum[r].count;
					}
				}
				else
					for(j=B; j<B+blocksize; ++j)
					{
						Dx = data[i].x - data[j].x;
						Dy = data[i].y - data[j].y;
						r = sqrt(Dx*Dx + Dy*Dy);
						accum[r].g += data[i].cos6 * data[j].cos6 + data[i].sin6 * data[j].sin6;
						++accum[r].count;
					}
			}
			C=B;
		}
	}

	for (r = 0; r < MAX_R; r++)
		accum[r].g = accum[r].g / accum[r].count;

	//	Calculando lo que ha tomado el calculo
	finalTime = getTime();
	
	//	Imprimimos resultados
	results();
	return 0;

}
