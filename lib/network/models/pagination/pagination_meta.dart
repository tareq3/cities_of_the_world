import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'pagination_meta.freezed.dart';

part 'pagination_meta.g.dart';

@HiveType(typeId: 5)
@Freezed()
class PaginationMeta with _$PaginationMeta {
  factory PaginationMeta(
      {@HiveField(0) @JsonKey(name: 'current_page') required int currentPage,
      @HiveField(1) @JsonKey(name: 'per_page') required int? perPage,
      @HiveField(2) @JsonKey(name: 'last_page') required int? lastPage,
      @HiveField(3) required int? total}) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}
