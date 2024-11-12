part of 'cities_bloc.dart';

@freezed
class CitiesEvent with _$CitiesEvent {

  const factory CitiesEvent.queryUpdated(String query) = _QueryUpdated;

  const factory CitiesEvent.fetchedNextPage(int page) = _FetchedNextPage;
}
