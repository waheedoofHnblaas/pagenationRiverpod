import 'package:freezed_annotation/freezed_annotation.dart';
import '../conversionsModel/conversionsModel.dart';

part 'imageModel.freezed.dart';

part 'imageModel.g.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int? id,
    required String? fileName,
    required ConverModel? conversions,
    // @Default(true) bool isImportant
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}
// "id": 13,
// "name": "testimage",
// "email": "waheed@example.test"
