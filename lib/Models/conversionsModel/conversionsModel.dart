import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversionsModel.freezed.dart';

part 'conversionsModel.g.dart';

@freezed
class ConverModel with _$ConverModel {
  const factory ConverModel({
    required String? small,
    required String? medium,
    required String? large,
    required String? default1,
    // @Default(true) bool isImportant
  }) = _ConverModel;

  factory ConverModel.fromJson(Map<String, dynamic> json) =>
      _$ConverModelFromJson(json);
}
// "id": 13,
// "name": "testconver",
// "email": "waheed@example.test"
