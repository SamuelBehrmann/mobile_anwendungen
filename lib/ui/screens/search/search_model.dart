import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    required String query,
    required List<String> searchResults,
    required List<String> filteredResults,
  }) = _SearchModel;
}
