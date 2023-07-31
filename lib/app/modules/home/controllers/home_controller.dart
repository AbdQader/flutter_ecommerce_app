import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../../data/models/product_model.dart';

class HomeController extends GetxController {

  List<ProductModel> products = [];
  
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  getProducts() {
    products = DummyHelper.products;
  }
}
