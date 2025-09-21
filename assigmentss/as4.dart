class Product {
  int _id;
  String _name;
  double _price;

  Product(this._id, this._name, this._price);

  int get id => _id;
  String get name => _name;
  double get price => _price;

  set price(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print("Invalid price. Must be greater than 0.");
    }
  }

  @override
  String toString() {
    return "Product: $_name | Price: $_price";
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  void removeProduct(Product product) {
    products.remove(product);
    print("${product.name} removed from cart.");
  }

  void showCart() {
    if (products.isEmpty) {
      print("Cart is empty.");
    } else {
      double total = 0;
      print("\n--- Cart Contents ---");
      for (var p in products) {
        print(p);
        total += p.price;
      }
      print("Total Price: $total\n");
    }
  }
}

void main() {
  Product p1 = Product(1, "Laptop", 1200);
  Product p2 = Product(2, "Phone", 800);
  Product p3 = Product(3, "Headphones", 150);

  Cart cart = Cart();

  cart.addProduct(p1);
  cart.addProduct(p2);

  cart.showCart();

  cart.removeProduct(p1);
  cart.showCart();
}
