import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../../data/models/product_model.dart';

class FavoritesController extends GetxController {

  // to hold the favorite products
  List<ProductModel> products = [];
  
  @override
  void onInit() {
    getFavoriteProducts();
    super.onInit();
  }

  /// get the favorite products from the product list
  getFavoriteProducts() {
    products = DummyHelper.products.where((product) => product.isFavorite!).toList();
    update();
  }
}
