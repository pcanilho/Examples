#include "lib/Examples.hpp"
#include "lib/includes.h"

using namespace std;

void printMenu() {
	printf("\n");
	printf("##########################################\n");
	printf("############# C++ INPUT TEST #############\n");
	printf("##########################################\n");
	printf("#### COMMANDS                         ####\n");
	printf("####                                  ####\n");
	printf("#### 1)Main menu                      ####\n");
	printf("#### 2)Help                           ####\n");
	printf("#### 3)User                           ####\n");
	printf("#### 4)C++ Examples                   ####\n");
	printf("#### 5)Exit                           ####\n");
	printf("##########################################\n");

}

void fflushstdin( void )
{
    int c;
    while( (c = fgetc( stdin )) != EOF && c != '\n' );
}

void readUsrInput() {
	printf("input> ");
	char r;
	scanf(" %1s", &r);
	fflushstdin();
	switch (r) {
	case '1':
		printMenu();
		readUsrInput();
		break;
	case '2':
		printf("Help is coming soon!\n");
		readUsrInput();
		break;
	case '3':
		system("whoami && hostname");
		readUsrInput();
		break;
	case '4':
		Examples ex1;

		printf("1) add(x,y) -> r=x+y\n2) sub(x,y) -> r=x-y\ninput/examples> ");
		char r2;
		scanf(" %1s", &r2);
		fflushstdin();
		if (r2 == '1'){
			printf("%s %d", "\nr=", ex1.add());
			printf("\n");
		}else if (r2 == '2'){
			printf("%s %d", "\nr=", ex1.sub());
			printf("\n");
		}
		else
			printf("Wrong input.\n");


		readUsrInput();
		break;
	case '5':
		printf("Terminating...\n");
		printf("Are you sure you want to exit? y/n\ninput/exit> ");
		char r1;
		scanf(" %1s", &r1);
		fflushstdin();
		if (r1 == 'y' || r1 == 'Y') {
			printf("Exiting...\n");
			exit(0);
		} else {
			printf("Aborted...\n");
			readUsrInput();
		}
		break;
	default:
		printf("Wrong input.\n");
		readUsrInput();
		break;
	}
}

int main() {
	// Print menu
	printMenu();

	// Init Input
	readUsrInput();

	return 0;

}

