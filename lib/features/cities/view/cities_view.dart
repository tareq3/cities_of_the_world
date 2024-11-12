import 'dart:async';
import 'package:cities_of_the_world/features/cities/widgets/primary_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:cities_of_the_world/features/cities/widgets/layouts/city_list_layout.dart';
import 'package:cities_of_the_world/features/cities/widgets/layouts/city_map_layout.dart';

import '../widgets/toggle_button.dart';

class CitiesView extends StatefulWidget {
  const CitiesView({super.key});

  @override
  State<CitiesView> createState() => _CitiesViewState();
}

class _CitiesViewState extends State<CitiesView> {
  final ValueNotifier<bool> _isMapView = ValueNotifier(
      false); //could have used other state tools but  as this is the only state we need to care about in this widget, using something simple

  @override
  void dispose() {
    _isMapView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Center(
        child: ValueListenableBuilder<bool>(
          valueListenable: _isMapView,
          builder: (_, isMapView, __) {
            return isMapView
                ? const CityMapLayout()
                : const CityListLayout();
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Expanded(child: PrimarySearchBar()),
          ToggleButton(isMapView: _isMapView),
        ],
      ),
    );
  }
}
