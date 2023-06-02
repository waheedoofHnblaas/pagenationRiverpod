import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_flutter2/Models/productModel/productModel.dart';
import 'package:qit_flutter2/links.dart';
import 'package:qit_flutter2/view/screens/home_page.dart';

class ProductService {
  Future<AsyncValue<List<ProductModel>>> getProductModel() async {
    print('===========getProductModel');
    try {
      var dio = Dio();
      var response = await dio.get(
        '${AppLinks.productLink}?perpage=$perpage&page=$page',
        options: Options(
          headers: {'Accept': 'application/json'},
          method: 'GET',
        ),
      );
      print(response.data['data']);
      List productsList = (response.data['data'] as List);
      List<ProductModel> list = productsList
          .map<ProductModel>((product) => ProductModel.fromJson(product))
          .toList();
      productsAll.addAll(list);
      return AsyncData(list);
    } catch (e) {
      return const AsyncError("InterNet Connection", StackTrace.empty);
    }
  }

  List<ProductModel> productsAll = [];


  Future<AsyncValue<List<ProductModel>>> moreProducts() async {
    try {
      if (page <= total/perpage) {
        page++;
      } else {
        return AsyncData(productsAll);
      }

      var dio = Dio();
      var response = await dio.get(
        '${AppLinks.productLink}?perpage=$perpage&page=$page',
        options: Options(
          headers: {'Accept': 'application/json'},
          method: 'GET',
        ),
      );
      var productsRes = (response.data['data'] as List);
      List<ProductModel> list = productsRes
          .map<ProductModel>((post) => ProductModel.fromJson(post))
          .toList();
      productsAll.addAll(list);
      return AsyncData(productsAll);
    } catch (e) {
      return const AsyncError("InterNet Connection", StackTrace.empty);
    }
  }
}

