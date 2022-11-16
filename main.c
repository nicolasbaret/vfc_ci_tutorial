#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 4096


float naiveDotprod(float * x, float * y, size_t n) {
	float res = 0;

	for(size_t i=0; i<n; i++) {
		res += x[i] * y[i];
	}

	return res;
}


int main(void) {

	float x [N], y [N];

	srand(42);
	for(size_t i=0; i<N; i++) {
		x[i] = rand() / (float) RAND_MAX;
		y[i] = rand() / (float) RAND_MAX;
	}
	srand(time(NULL));

	float naiveRes = naiveDotprod(x, y, N);

	printf("Naive dotprod = %.7f \n", naiveRes);

	return 0;
}
