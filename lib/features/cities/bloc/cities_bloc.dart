import 'package:bloc/bloc.dart';
import 'package:cities_of_the_world/features/cities/bloc/cities_state_model.dart';
import 'package:cities_of_the_world/features/cities/repositories/cities_repository.dart';
import 'package:cities_of_the_world/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_event.dart';

part 'cities_state.dart';

part 'cities_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final _citiesRepository = getIt<CitiesRepository>();

  CitiesBloc() : super(const CitiesState.initial(CitiesStateModel())) {
    on<_FetchedNextPage>((event, emit) async {
      final nextPage = event.page;
      await _fetchPage(
          nextPage, emit, state.model?.searchQuery); // Fetch the next page
    });

    on<_QueryUpdated>((event, emit) async {
      emit(CitiesState.queryUpdated(state.model
          ?.copyWith(searchQuery: event.query))); // Fetch the next page
    });
  }

  Future<void> _fetchPage(
      int page, Emitter<CitiesState> emit, String? cityName) async {
    emit(CitiesState.loading(state.model));

    try {
      final paginatedResponse = await _citiesRepository.fetchCities(
        page: page,
        filterNameContains: cityName,
        includeCountry: true,
      );

      final isLastPage = page == paginatedResponse.pagination.lastPage;

      emit(CitiesState.updated(state.model?.copyWith(
          cities: paginatedResponse.items,
          currentPage: paginatedResponse.pagination.currentPage,
          isLastPage: isLastPage,
          searchQuery: cityName ?? '')));
    } catch (error) {
      emit(CitiesState.updated(state.model)); // Optionally, handle error
    }
  }
}
