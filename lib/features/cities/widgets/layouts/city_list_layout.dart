import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../bloc/cities_bloc.dart';
import '../../models/city_model.dart';

class CityListLayout extends StatefulWidget {
  const CityListLayout({super.key});

  @override
  State<CityListLayout> createState() => _CityListLayoutState();
}

class _CityListLayoutState extends State<CityListLayout> {
  final PagingController<int, CityModel> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<CitiesBloc>().add(CitiesEvent.fetchedNextPage(pageKey));
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CitiesBloc, CitiesState>(
      listener: (context, state) {
        if (state is CitiesStateUpdated) {
          final isLastPage = state.model?.isLastPage;
          final cities = state.model?.cities;

          if (isLastPage == true) {
            _pagingController.appendLastPage(cities ?? []);
          } else {
            final nextPageKey = state.model!.currentPage + 1;
            _pagingController.appendPage(cities ?? [], nextPageKey);
          }
        } else if (state is CitiesStateQueryUpdated) {
          _pagingController.refresh();
          _pagingController.appendPage([], 1);
        }
      },
      child: PagedListView<int, CityModel>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<CityModel>(
          itemBuilder: (context, city, index) => ListTile(
            title: Text(city.name ?? ''),
            subtitle: Text(city.country?.name ?? 'No country data'),
          ),
        ),
      ),
    );
  }
}
