import 'package:freezed_annotation/freezed_annotation.dart';
import '../imageModel/imageModel.dart';
import '../priceModel/priceModel.dart';

part 'productModel.freezed.dart';

part 'productModel.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int? id,
    required String? title,
    required String? description,
    required PriceModel? price,
    required ImageModel? image,
    // @Default(true) bool isImportant
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
// "id": 13,
// "name": "testuser",
// "email": "waheed@example.test"
