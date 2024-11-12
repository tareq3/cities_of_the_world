import 'package:cities_of_the_world/features/cities/models/city_paginated_result.dart';
import 'package:cities_of_the_world/network/api_client.dart';
import 'package:cities_of_the_world/network/models/pagination/api_paginated_result.dart';
import 'package:hive/hive.dart';

import '../../../injection.dart';
import '../models/city_model.dart';

class CitiesRepository {
  final ApiClient _apiClient = getIt<ApiClient>();
  final String _cacheBoxName = 'cities_cache';

  /// Opens the Hive box for caching city data
  Future<Box> _openCacheBox() async {
    return await Hive.openBox<CityPaginatedResult>(_cacheBoxName);
  }

  /// Fetches a paginated list of cities, with optional filters and related country data.
  Future<ApiPaginatedResult<CityModel>> fetchCities({
    required int page,
    String? filterNameContains,
    bool includeCountry = false,
  }) async {
    final cacheBox = await _openCacheBox();
    // Check for cached data
    var cacheKey = '${page}_${filterNameContains}_$includeCountry';
    if (cacheBox.containsKey(cacheKey)) {
      final cachedData = cacheBox.get(cacheKey) as CityPaginatedResult;
      return ApiPaginatedResult(
          items: cachedData.items,
          pagination:
              cachedData.pagination);
    }
    try {
      // Prepare query parameters
      final Map<String, dynamic> queryParams = {
        'page': page,
        if (filterNameContains != null)
          'filter[0][name][contains]': filterNameContains,
        if (includeCountry) 'include': 'country',
      };

      // Fetch data from the city endpoint
      final response = await _apiClient.get('city', queryParams);

      var data = response['data'];
      ApiPaginatedResult<CityModel> apiPaginatedResult =
          ApiPaginatedResult.fromJson(
              data, (json) => CityModel.fromJson(json as Map<String, dynamic>));

      cacheBox.put(
          cacheKey,
          CityPaginatedResult(
              items: apiPaginatedResult.items,
              pagination: apiPaginatedResult.pagination));
      return apiPaginatedResult;
    } catch (e) {
      throw Exception('Failed to load cities: $e');
    }
  }
}
