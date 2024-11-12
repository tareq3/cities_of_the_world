// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_meta.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PaginationMetaAdapter extends TypeAdapter<PaginationMeta> {
  @override
  final int typeId = 5;

  @override
  PaginationMeta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PaginationMeta(
      currentPage: fields[0] as int,
      perPage: fields[1] as int?,
      lastPage: fields[2] as int?,
      total: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PaginationMeta obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.currentPage)
      ..writeByte(1)
      ..write(obj.perPage)
      ..writeByte(2)
      ..write(obj.lastPage)
      ..writeByte(3)
      ..write(obj.total);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationMetaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationMetaImpl _$$PaginationMetaImplFromJson(Map<String, dynamic> json) =>
    _$PaginationMetaImpl(
      currentPage: (json['current_page'] as num).toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationMetaImplToJson(
        _$PaginationMetaImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
