#include <cstdio>
#include <cstring>

using namespace std;

int main()
{
	int c;
	FILE *fp;
	fp = fopen("C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_FileHandling/Zybo_FileHandling/src/file.txt", "w");
	char str[20] = "Hello World!";
	if (fp)
	{
		for(int i=0; i<strlen(str); i++)
			putc(str[i],fp);
	}
	fclose(fp);
}
