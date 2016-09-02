#include <stdio.h>

__global__ void myGpuFunction()
{

}

int main(void)
{
myGpuFunction<<<1,1>>>();
printf("Simple program to check make the GPU calls \n");
return 0;
}
