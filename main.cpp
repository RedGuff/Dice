#include <iostream>
#include <time.h>

using namespace std;
int dice ( int max = 6 , int min = 1)
{
     if ( max < min ) { // Usually, the minimum is before the maximum, and sometimes it is not the default value.
        auto temp = max;
        max = min;
        min = temp;
    }   
    int number = rand() % (max - min + 1) + min;
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
