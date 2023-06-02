import 'package:freezed_annotation/freezed_annotation.dart';
part 'priceModel.freezed.dart';
part 'priceModel.g.dart';

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel({
    required String value,
    required String currency,
    required String formatted,
    // @Default(true) bool isImportant
  }) = _PriceModel;


  factory PriceModel.fromJson(Map<String, dynamic> json)
  => _$PriceModelFromJson(json);


}