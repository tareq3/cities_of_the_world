// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityModelAdapter extends TypeAdapter<CityModel> {
  @override
  final int typeId = 1;

  @override
  CityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityModel(
      name: fields[0] as String?,
      localName: fields[1] as String?,
      lat: fields[2] as double?,
      id: fields[3] as int?,
      lng: fields[4] as double?,
      createdAt: fields[5] as String?,
      updatedAt: fields[6] as String?,
      countryId: fields[7] as int?,
      country: fields[8] as CountryModel?,
    );
  }

  @override
  void write(BinaryWriter writer, CityModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.localName)
      ..writeByte(2)
      ..write(obj.lat)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.lng)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.updatedAt)
      ..writeByte(7)
      ..write(obj.countryId)
      ..writeByte(8)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelImpl _$$CityModelImplFromJson(Map<String, dynamic> json) =>
    _$CityModelImpl(
      name: json['name'] as String?,
      localName: json['local_name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      id: (json['id'] as num?)?.toInt(),
      lng: (json['lng'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CityModelImplToJson(_$CityModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'local_name': instance.localName,
      'lat': instance.lat,
      'id': instance.id,
      'lng': instance.lng,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'country_id': instance.countryId,
      'country': instance.country,
    };
