#include <time.h>

#define N 50000
#define MAX_R 50000
#define MHz 400

unsigned int i, j, Dx, Dy, r;
int initialTime, finalTime, executionTime;
struct timespec tpstart;

inline int getTime(void)
{
	clock_gettime(CLOCK_REALTIME, &tpstart);
	return tpstart.tv_sec;
}

inline void results(void)
{
	executionTime = finalTime - initialTime;
	//	Imprimimos resultados
	printf("Tiempo de ejecucion: %d [s]\n", executionTime);
	//printf("Ciclos de ejecucion: %ldu [cycles]\n", executionTime*MHz*FACTOR);
	return;
}
