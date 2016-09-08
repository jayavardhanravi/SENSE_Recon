#include <stdio.h>

__global__ void myGpuFunction(int a, int b, int *c)
{
 *c=a+b;
}

int main(void)
{
int c;
int *dev_c;
cudaMalloc((void**)&dev_c,sizeof(int));
myGpuFunction<<<1,1>>>(2,2,dev_c);
cudaMemcpy(&c, dev_c, sizeof(int), cudaMemcpyDeviceToHost);
printf("the Simple program to check make the GPU calls : Sum %d\n",c);
cudaFree(dev_c);
return 0;
}
