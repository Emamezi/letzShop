
import 'package:letzShop/core/model/product.dart';

class Cart {
  final List<Product> products;
  final double priceTotal;

  Cart(this.products, this.priceTotal);
}
