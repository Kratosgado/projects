#ifndef PRODUCT_H
#define PRODUCT_H
#include <iostream>

using namespace std;

class Product
{
public:
	Product(string product_name = "") : name(product_name) {
		price = 0;
		total_price = 1;
	};
	ostream &operator<<(ostream strm) {
		strm << "Name: " << name << endl;
		strm << "Price: " << price << endl;
		strm << "Number of Products: " << num_of_product << endl;
		strm << "Total price:	" << total_price << endl;
		return strm;
	}
	void setPrice(double cost) {
		price = cost;
		calcTotalPrice();
	}
	void calcTotalPrice() {
		total_price = num_of_product * price;
	}
	const Product operator=(const Product& right) {
		price = right.price;
		total_price = right.total_price;
		num_of_product = right.num_of_product;
		return *this;
	}
	void operator=(string product_name) {
		name = product_name;
	}
	void operator=(const int number) {
		num_of_product = number;
		calcTotalPrice();
	};
	void operator+=(const int number) {
		num_of_product += number;
		calcTotalPrice();
	}
	void operator-=(const int number) {
		num_of_product -= number;
		calcTotalPrice();
	}

private:
	static int total_products;
	string name;
	double price, total_price;
	int num_of_product;
};

#endif // !PRODUCT_H
