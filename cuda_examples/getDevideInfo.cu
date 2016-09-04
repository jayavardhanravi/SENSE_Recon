#include <stdio.h>

int main(void)
{
 int count;
 cudaGetDeviceCount(&count);
 printf("Info : cudaGetDeviceCount = %d \n",count);
 return 0;
}

