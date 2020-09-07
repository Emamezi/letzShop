import 'package:letzShop/core/model/product.dart';
import 'package:letzShop/feature/product/product_detail_view.dart';
import 'package:letzShop/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  navProductDetail(Product product) {
    _navigationService.navigateToView(ProductDetailView(
      product: product,
    ));
  }
}
