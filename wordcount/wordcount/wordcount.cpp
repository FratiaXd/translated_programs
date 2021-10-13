// wordcount.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"


//Count the words in the test string
char *test_string="This is a  test  string longer now ";

int _tmain(int argc, _TCHAR* argv[])
{
	int i=0;
	int words=0;
	bool last_space=true;
	while( test_string[i]!=0)
	{
		if(!last_space && test_string[i]==' ')//end of word - space preceded by not space must handle multi spaces
			words=words+1;
		if (test_string[i]==' ')
			last_space=true;
		else
			last_space=false;
		i++;
	}

	return 0;
}

