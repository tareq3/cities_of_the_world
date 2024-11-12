import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/cities_bloc.dart';

class PrimarySearchBar extends StatefulWidget {
  const PrimarySearchBar({super.key});

  @override
  State<PrimarySearchBar> createState() => _PrimarySearchBarState();
}

class _PrimarySearchBarState extends State<PrimarySearchBar> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildSearchField(context);
  }

  Widget _buildSearchField(BuildContext context) {
    return TextField(
      controller: _searchController,
      style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        labelText: 'Search by City Name',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: _onSearch,
        ),
      ),
      onChanged: _onSearchChanged,
    );
  }

  void _onSearchChanged(String query) {
    _debounceSearch(query);
  }

  void _debounceSearch(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _onSearch(query);
    });
  }

  void _onSearch([String? query]) {
    context.read<CitiesBloc>().add(CitiesEvent.queryUpdated(query ?? ''));
  }
}
