#include <iostream>
#include <random>
using namespace std;

int dice ( int RandMAX = 6 , int RandMIN = 1)
{
     if ( RandMAX < RandMIN ) { // Usually, the minimum is before the maximum, and sometimes it is not the default value.
        swap(RandMIN, RandMAX);
    }
    random_device dev;
    mt19937 rng(dev());
    uniform_int_distribution<std::mt19937::result_type> randInt(RandMIN, RandMAX);
    int number = randInt(dev);
    return number;
}

int main()
{
    for ( int i = 1; i <= 42; i++ ) // iMax inclus.
        {
        cout << dice ( 2 ) << " " << dice() << endl;
        }
    return 0;
}
