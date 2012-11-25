#include <stdio.h>
#include <math.h>

#define N 1000

int main(int argc, char **argv)
{
	int i, n;
	FILE *tabla;

	tabla = fopen("tabla.h", "w");

	fprintf(tabla, "int root(int x) {\n");
	fprintf(tabla, "switch(x) {\n");
	for (i = 0; i < N; i++)
	{
		n = sqrt(i);
		fprintf(tabla, "case %d: return %d;\n", i, n);
	}

	fprintf(tabla,"}\nreturn 0;\n}\n");

	fclose(tabla);
}
