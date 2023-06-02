import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_flutter2/Models/productModel/productModel.dart';
import 'package:qit_flutter2/Services/product_services.dart';


final productNotifierProvider =
    StateNotifierProvider<ProductNotifier, AsyncValue<List<ProductModel>>>(
        (ref) {
  ProductService service = ref.read(productsServiceProvider);
  return ProductNotifier(service);
});


final productsServiceProvider = Provider<ProductService>((ref) => ProductService());


class ProductNotifier extends StateNotifier<AsyncValue<List<ProductModel>>> {
  ProductNotifier(this._service) : super(const AsyncLoading()) {
    getProducts();
  }

  final ProductService _service;

  void getProducts() async {
    state = await _service.getProductModel();
  }

  void moreProducts() async {
    state = await _service.moreProducts();
  }
}
