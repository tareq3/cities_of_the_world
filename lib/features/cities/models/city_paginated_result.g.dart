// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_paginated_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityPaginatedResultAdapter extends TypeAdapter<CityPaginatedResult> {
  @override
  final int typeId = 4;

  @override
  CityPaginatedResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityPaginatedResult(
      items: (fields[0] as List).cast<CityModel>(),
      pagination: fields[1] as PaginationMeta,
    );
  }

  @override
  void write(BinaryWriter writer, CityPaginatedResult obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.items)
      ..writeByte(1)
      ..write(obj.pagination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityPaginatedResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
