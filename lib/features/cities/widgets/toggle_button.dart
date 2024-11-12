import 'package:flutter/material.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({
    super.key,
    required ValueNotifier<bool> isMapView,
  }) : _isMapView = isMapView;

  final ValueNotifier<bool> _isMapView;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ValueListenableBuilder<bool>(
        valueListenable: _isMapView,
        builder: (_, isMapView, __) {
          return Icon(isMapView ? Icons.list : Icons.map);
        },
      ),
      onPressed: () => _isMapView.value = !_isMapView.value,
    );
  }
}
