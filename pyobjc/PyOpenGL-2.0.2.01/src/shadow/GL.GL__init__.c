/*
# BUILD sources []
# BUILD api_version_check 0
# BUILD include_dirs []
*/
#include "src/config.h"

#include <stdio.h>

int main(int argc, char **argv)
{
	FILE *f = fopen("api_version", "w");
#if defined(GL_VERSION_1_1)
	fprintf(f, "257");
#else
	fprintf(f, "256");
#endif
	fclose(f);
	return 0;
}
