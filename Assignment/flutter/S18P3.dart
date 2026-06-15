/*
    =>3.Build a Dart class called Product to represent items on Flipkart, with fields: productName, price, and isAvailable. 
    Add a constructor and a method displayProduct() that prints all details in a nice format. Instantiate one Product and call displayProduct().
*/
class Product {
  String productName;
  String price;
  bool isAvailable;

  Product(this.productName, this.price, this.isAvailable);

  void displayProduct() {
    print("Product : $productName");
    print("Price : $price");
    print("Is-Available : $isAvailable");
  }
}

void main() {
  Product p1 = Product('T-shirt', '1000₹', true);
  p1.displayProduct();
}
