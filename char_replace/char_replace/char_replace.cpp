// char_replace.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
//Program to replace spaces with underscores
char *testdata="This is a test string"; //Note you can do this in assembler with dc.b "This is a test string" 
int _tmain(int argc, _TCHAR* argv[])
{
	int i=0;
	while(testdata[i] != 0)
	{
		if (testdata[i]==' ')
			testdata[i]= '_';
		i++;
	}
	return 0;
}

