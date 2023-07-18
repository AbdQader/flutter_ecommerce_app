import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';

class BaseController extends GetxController {

  // current screen index
  int currentIndex = 0;

  /// change the selected screen index
  changeScreen(int selectedIndex) {
    currentIndex = selectedIndex;
    update();
  }

  /// when the user press on the favorite button in the product
  onFavoriteButtonPressed({required int productId}) {
    var product = DummyHelper.products.firstWhere((product) => product.id == productId);
    if (product.isFavorite!) {
      // remove product from favorites
      product.isFavorite = false;
      Get.find<FavoritesController>().getFavoriteProducts();
    } else {
      // add product to favorites
      product.isFavorite = true;
      Get.find<FavoritesController>().getFavoriteProducts();
    }
    update(['FavoriteButton']);
  }

}
