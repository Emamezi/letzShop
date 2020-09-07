
import 'package:auto_route/auto_route_annotations.dart';
import 'package:letzShop/feature/cart/cart_view.dart';
import 'package:letzShop/feature/order/orders_view.dart';
import 'package:letzShop/feature/product/product_detail_view.dart';
import 'package:letzShop/feature/product/products_view.dart';

  @AdaptiveAutoRouter(routes: <AutoRoute>[
    AdaptiveRoute(page: ProductView, initial: true),
    AdaptiveRoute(page: ProductDetailView),
    AdaptiveRoute(page: CartView),
    AdaptiveRoute(page: OrdersView)
  ])
  
class $Router{
}