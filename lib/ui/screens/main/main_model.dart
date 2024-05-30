import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_model.freezed.dart';

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    required final MainModelColor color,
  }) = _MainModel;
}

enum MainModelColor {
  red,
  blue,
  green,
}
