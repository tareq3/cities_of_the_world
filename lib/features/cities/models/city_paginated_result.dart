import 'package:hive/hive.dart';

import '../../../network/models/pagination/api_paginated_result.dart';
import '../../../network/models/pagination/pagination_meta.dart';
import 'city_model.dart';

part 'city_paginated_result.g.dart';

@HiveType(typeId: 4)
class CityPaginatedResult extends ApiPaginatedResult<CityModel> {
  @HiveField(0)
  final List<CityModel> items;

  @HiveField(1)
  final PaginationMeta pagination;

  CityPaginatedResult({required this.items, required this.pagination})
      : super(items: items, pagination: pagination);
}
