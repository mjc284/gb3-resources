
int main(void)
{
	/*
	 *	Reading from the special address pointed to by
	 *	gDebugLedsMemoryMappedRegister will cause the processor to
	 *	set the value of 8 of the FPGA's pins to the byte written
	 *	to the address. See the PCF file for how those 8 pins are
	 *	mapped.
	 */
	enum
	{
		kSpinDelay = 400000,
	};

	volatile unsigned int *gDebugLedsMemoryMappedRegister = (unsigned int *)0x2000;

	*gDebugLedsMemoryMappedRegister = 0x0;

	int a = 5;
	int b = 2;
	int t1 = a + b;
	int t2 = a - b;
	int t3 = a << b;
	int t4 = a >> b;
	int t5 = (a > b);
	int t6 = (a == b);
	int t7 = (a < b);
	int dummy = 5;

	int error = 0;
	
	if(t1 == 7)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	
	if(t2 == 3)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(t3 == 20)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(t4 == 1)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(t5 == 1)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(t6 == 0)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(t7 == 0)
	{
		dummy = 0;
	}
	else
	{
		error = 1;
	}

	if(a == b)
	{
		error = 1;
	}

	if(b > a)
	{
		error = 1;
	}

	if(error == 1)
	{
		*gDebugLedsMemoryMappedRegister = 0xFF;
	}
	

	while (1)
	{
		a++;
	}
}

