/*
 * File: defect_test.cpp
 */
#include <stdlib.h>

void array_boundery_violation()
{
	int aBV[3] = {1,2,3};

	aBV[2]= 5;
}


void null_pointer_deference_general_must()
{
	int *iPtr = NULL;

	// *iPtr = 2;

}
