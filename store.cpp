#include "store.h"
///  total without tax
void store::sub_total(fruit a, fruit b, fruit c ) {
	float sub_total = 0;
	sub_total += a.howmany * a.price;
	sub_total += b.howmany * b.price;
	sub_total += c.howmany * c.price;
	cout << "SubTotal: $" << sub_total << endl;
}

/// only tax
void store::tax(fruit a, fruit b, fruit c){
	float taxes = 0;
	taxes += a.howmany * a.price * 0.095; //  example: tax 9.5% of things
	taxes += b.howmany * b.price * 0.095;  
	taxes += c.howmany * c.price * 0.095;  
	cout << "Tax: $"  <<  taxes  << endl; 
}

/// total ( with tax )
void store::total_price(fruit a, fruit b, fruit c, double d){
	float total = 0;
	total += (a.howmany * a.price) + (a.howmany * a.price )* 0.095 + d;
	total += (b.howmany * b.price) + (b.howmany * b.price )* 0.095 + d;
	total += (c.howmany * c.price) + (c.howmany * c.price )* 0.095 + d;
	cout << "Total:  $" << total << endl;
	cout << endl;
}
