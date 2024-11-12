// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) {
  return _PaginationMeta.fromJson(json);
}

/// @nodoc
mixin _$PaginationMeta {
  @HiveField(0)
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'per_page')
  int? get perPage => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationMetaCopyWith<PaginationMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationMetaCopyWith<$Res> {
  factory $PaginationMetaCopyWith(
          PaginationMeta value, $Res Function(PaginationMeta) then) =
      _$PaginationMetaCopyWithImpl<$Res, PaginationMeta>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'current_page') int currentPage,
      @HiveField(1) @JsonKey(name: 'per_page') int? perPage,
      @HiveField(2) @JsonKey(name: 'last_page') int? lastPage,
      @HiveField(3) int? total});
}

/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res, $Val extends PaginationMeta>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = freezed,
    Object? lastPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationMetaImplCopyWith<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  factory _$$PaginationMetaImplCopyWith(_$PaginationMetaImpl value,
          $Res Function(_$PaginationMetaImpl) then) =
      __$$PaginationMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'current_page') int currentPage,
      @HiveField(1) @JsonKey(name: 'per_page') int? perPage,
      @HiveField(2) @JsonKey(name: 'last_page') int? lastPage,
      @HiveField(3) int? total});
}

/// @nodoc
class __$$PaginationMetaImplCopyWithImpl<$Res>
    extends _$PaginationMetaCopyWithImpl<$Res, _$PaginationMetaImpl>
    implements _$$PaginationMetaImplCopyWith<$Res> {
  __$$PaginationMetaImplCopyWithImpl(
      _$PaginationMetaImpl _value, $Res Function(_$PaginationMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? perPage = freezed,
    Object? lastPage = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PaginationMetaImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationMetaImpl implements _PaginationMeta {
  _$PaginationMetaImpl(
      {@HiveField(0) @JsonKey(name: 'current_page') required this.currentPage,
      @HiveField(1) @JsonKey(name: 'per_page') required this.perPage,
      @HiveField(2) @JsonKey(name: 'last_page') required this.lastPage,
      @HiveField(3) required this.total});

  factory _$PaginationMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationMetaImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @HiveField(1)
  @JsonKey(name: 'per_page')
  final int? perPage;
  @override
  @HiveField(2)
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @HiveField(3)
  final int? total;

  @override
  String toString() {
    return 'PaginationMeta(currentPage: $currentPage, perPage: $perPage, lastPage: $lastPage, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationMetaImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, perPage, lastPage, total);

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationMetaImplCopyWith<_$PaginationMetaImpl> get copyWith =>
      __$$PaginationMetaImplCopyWithImpl<_$PaginationMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationMetaImplToJson(
      this,
    );
  }
}

abstract class _PaginationMeta implements PaginationMeta {
  factory _PaginationMeta(
      {@HiveField(0)
      @JsonKey(name: 'current_page')
      required final int currentPage,
      @HiveField(1) @JsonKey(name: 'per_page') required final int? perPage,
      @HiveField(2) @JsonKey(name: 'last_page') required final int? lastPage,
      @HiveField(3) required final int? total}) = _$PaginationMetaImpl;

  factory _PaginationMeta.fromJson(Map<String, dynamic> json) =
      _$PaginationMetaImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @HiveField(1)
  @JsonKey(name: 'per_page')
  int? get perPage;
  @override
  @HiveField(2)
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @HiveField(3)
  int? get total;

  /// Create a copy of PaginationMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationMetaImplCopyWith<_$PaginationMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
