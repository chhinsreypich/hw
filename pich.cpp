//pich.cpp
#include<iostream>
#include "fruit.h"
#include "store.h"
using namespace std;
int main() {
	store A, B;
	cout << A.apple.name << ": "<< A.apple.price << endl;
	A.sub_total(A.apple, A.pear, A.peach);
	A.tax(A.apple, A.pear, A.peach);
	A.total_price(A.apple, A.pear, A.peach);

	cout <<  B.mango.name << " shipping: $"<< B.mango.shipping << endl;
	cout <<  B.strawberry.name << " shipping: $"<< B.strawberry.shipping << endl;
  B.sub_total(B.mango, B.strawberry, B.banana);
	B.tax(B.mango, B.strawberry, B.banana);
	B.total_price(B.mango, B.strawberry, B.banana, B.mango.shipping); 


	return 123;
}