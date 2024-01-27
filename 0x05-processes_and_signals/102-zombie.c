#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - creates an infinite loop to crash the system
 * Return: zero!
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - This program does five zombie processes
 * program written by Adioz
 * Return: zero!
*/

int main(void)
{
	int k;
	pid_t zombie;

	for (k = 0; k < 5; k++)
	{
		zombie = fork();
		if (!zombie)
			return (0);
		printf("Zombie process created, PID: %d\n", zombie);
	}

	infinite_while();
	return (0);
}
