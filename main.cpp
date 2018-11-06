#include <iostream>
#include <time.h>

using namespace std;
int dice ( int max = 6 )
{
    int min = 1;
    int number = rand() % max + min; //
    return number;
}

int main()
{
    srand ( time ( NULL ) ); // No need for better init.
    for ( int i = 1; i <= 42; i++ ) // iMax inclus.
        {
        cout << dice ( 2 ) << " " << dice() << endl;
        }
    return 0;
}
