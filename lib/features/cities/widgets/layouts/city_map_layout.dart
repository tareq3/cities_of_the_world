import 'package:cities_of_the_world/features/cities/models/city_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../bloc/cities_bloc.dart';

class CityMapLayout extends StatefulWidget {
  const CityMapLayout({
    super.key,
  });

  @override
  State<CityMapLayout> createState() => _CityMapLayoutState();
}

class _CityMapLayoutState extends State<CityMapLayout> {
  late GoogleMapController mapController;

  final Set<Marker> _markers = <Marker>{};

  @override
  void initState() {
    super.initState();
    var cities = context.read<CitiesBloc>().state.model?.cities ?? [];
    _initializeMarkers(cities);

    //as for moving camera mapController must be initialized
    Future.delayed(const Duration(milliseconds: 100), () {
      _moveCamera();
    });
  }

  void _initializeMarkers(List<CityModel> cities) {
    _markers.clear();
    for (var city in cities) {
      _markers.add(Marker(
        markerId: MarkerId(city.name ?? ''),
        position: LatLng(city.lat ?? 0, city.lng ?? 0),
        infoWindow: InfoWindow(
          title: city.name,
          snippet: city.country?.name ?? "No country data",
        ),
      ));
    }
  }

  void _moveCamera() {
    if (_markers.isNotEmpty) {
      mapController.animateCamera(
        CameraUpdate.newLatLngBounds(_calculateBounds(_markers), 50),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CitiesBloc, CitiesState>(
      listener: (context, state) {
        if (state is CitiesStateUpdated) {
          final cities = state.model?.cities;
          _initializeMarkers(cities ?? []);
          _moveCamera();
        } else if (state is CitiesStateQueryUpdated) {
          context.read<CitiesBloc>().add(const CitiesEvent.fetchedNextPage(1));
        }
      },
      builder: (context, state) {
        return GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: LatLng(0.0, 0.0),
            zoom: 2.0,
          ),
          markers: _markers,
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
        );
      },
    );
  }

  LatLngBounds _calculateBounds(Set<Marker> markers) {
    final southwest = LatLng(
      markers.map((m) => m.position.latitude).reduce((a, b) => a < b ? a : b),
      markers.map((m) => m.position.longitude).reduce((a, b) => a < b ? a : b),
    );

    final northeast = LatLng(
      markers.map((m) => m.position.latitude).reduce((a, b) => a > b ? a : b),
      markers.map((m) => m.position.longitude).reduce((a, b) => a > b ? a : b),
    );

    return LatLngBounds(southwest: southwest, northeast: northeast);
  }
}
