// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../feature/cart/cart_view.dart';
import '../../feature/order/orders_view.dart';
import '../../feature/product/product_detail_view.dart';
import '../../feature/product/products_view.dart';
import '../model/product.dart';

class Routes {
  static const String productView = '/';
  static const String productDetailView = '/product-detail-view';
  static const String cartView = '/cart-view';
  static const String ordersView = '/orders-view';
  static const all = <String>{
    productView,
    productDetailView,
    cartView,
    ordersView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.productView, page: ProductView),
    RouteDef(Routes.productDetailView, page: ProductDetailView),
    RouteDef(Routes.cartView, page: CartView),
    RouteDef(Routes.ordersView, page: OrdersView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProductView: (data) {
      final args = data.getArgs<ProductViewArguments>(
        orElse: () => ProductViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProductView(key: args.key),
        settings: data,
      );
    },
    ProductDetailView: (data) {
      final args = data.getArgs<ProductDetailViewArguments>(
        orElse: () => ProductDetailViewArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProductDetailView(
          key: args.key,
          product: args.product,
        ),
        settings: data,
      );
    },
    CartView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CartView(),
        settings: data,
      );
    },
    OrdersView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OrdersView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProductView arguments holder class
class ProductViewArguments {
  final Key key;
  ProductViewArguments({this.key});
}

/// ProductDetailView arguments holder class
class ProductDetailViewArguments {
  final Key key;
  final Product product;
  ProductDetailViewArguments({this.key, this.product});
}
