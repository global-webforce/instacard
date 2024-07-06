// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FooDto _$FooDtoFromJson(Map<String, dynamic> json) {
  return _FooDto.fromJson(json);
}

/// @nodoc
mixin _$FooDto {
  @RfControl(disabled: true)
  int get id => throw _privateConstructorUsedError;
  @RfControl(validators: [RequiredValidator()])
  String get title => throw _privateConstructorUsedError;
  @RfControl()
  String get excerpt => throw _privateConstructorUsedError;
  @RfControl()
  int get color => throw _privateConstructorUsedError;
  @RfControl()
  String get featuredImage => throw _privateConstructorUsedError;
  @RfControl(disabled: true)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @RfControl(disabled: true)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  Color? get colorPick => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  @ignore
  @RfControl()
  List<SelectedFile> get featuredImageUpload =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FooDtoCopyWith<FooDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooDtoCopyWith<$Res> {
  factory $FooDtoCopyWith(FooDto value, $Res Function(FooDto) then) =
      _$FooDtoCopyWithImpl<$Res, FooDto>;
  @useResult
  $Res call(
      {@RfControl(disabled: true) int id,
      @RfControl(validators: [RequiredValidator()]) String title,
      @RfControl() String excerpt,
      @RfControl() int color,
      @RfControl() String featuredImage,
      @RfControl(disabled: true) DateTime? createdAt,
      @RfControl(disabled: true) DateTime? updatedAt,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      Color? colorPick,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @ignore
      @RfControl()
      List<SelectedFile> featuredImageUpload});
}

/// @nodoc
class _$FooDtoCopyWithImpl<$Res, $Val extends FooDto>
    implements $FooDtoCopyWith<$Res> {
  _$FooDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? excerpt = null,
    Object? color = null,
    Object? featuredImage = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? colorPick = freezed,
    Object? featuredImageUpload = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      colorPick: freezed == colorPick
          ? _value.colorPick
          : colorPick // ignore: cast_nullable_to_non_nullable
              as Color?,
      featuredImageUpload: null == featuredImageUpload
          ? _value.featuredImageUpload
          : featuredImageUpload // ignore: cast_nullable_to_non_nullable
              as List<SelectedFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooDtoImplCopyWith<$Res> implements $FooDtoCopyWith<$Res> {
  factory _$$FooDtoImplCopyWith(
          _$FooDtoImpl value, $Res Function(_$FooDtoImpl) then) =
      __$$FooDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@RfControl(disabled: true) int id,
      @RfControl(validators: [RequiredValidator()]) String title,
      @RfControl() String excerpt,
      @RfControl() int color,
      @RfControl() String featuredImage,
      @RfControl(disabled: true) DateTime? createdAt,
      @RfControl(disabled: true) DateTime? updatedAt,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      Color? colorPick,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @ignore
      @RfControl()
      List<SelectedFile> featuredImageUpload});
}

/// @nodoc
class __$$FooDtoImplCopyWithImpl<$Res>
    extends _$FooDtoCopyWithImpl<$Res, _$FooDtoImpl>
    implements _$$FooDtoImplCopyWith<$Res> {
  __$$FooDtoImplCopyWithImpl(
      _$FooDtoImpl _value, $Res Function(_$FooDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? excerpt = null,
    Object? color = null,
    Object? featuredImage = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? colorPick = freezed,
    Object? featuredImageUpload = null,
  }) {
    return _then(_$FooDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      colorPick: freezed == colorPick
          ? _value.colorPick
          : colorPick // ignore: cast_nullable_to_non_nullable
              as Color?,
      featuredImageUpload: null == featuredImageUpload
          ? _value._featuredImageUpload
          : featuredImageUpload // ignore: cast_nullable_to_non_nullable
              as List<SelectedFile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooDtoImpl extends _FooDto {
  _$FooDtoImpl(
      {@RfControl(disabled: true) this.id = Isar.autoIncrement,
      @RfControl(validators: [RequiredValidator()]) this.title = '',
      @RfControl() this.excerpt = '',
      @RfControl() this.color = 0xffef5350,
      @RfControl() this.featuredImage = '',
      @RfControl(disabled: true) this.createdAt,
      @RfControl(disabled: true) this.updatedAt,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      this.colorPick = Colors.red,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @ignore
      @RfControl()
      final List<SelectedFile> featuredImageUpload = const []})
      : _featuredImageUpload = featuredImageUpload,
        super._();

  factory _$FooDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooDtoImplFromJson(json);

  @override
  @JsonKey()
  @RfControl(disabled: true)
  final int id;
  @override
  @JsonKey()
  @RfControl(validators: [RequiredValidator()])
  final String title;
  @override
  @JsonKey()
  @RfControl()
  final String excerpt;
  @override
  @JsonKey()
  @RfControl()
  final int color;
  @override
  @JsonKey()
  @RfControl()
  final String featuredImage;
  @override
  @RfControl(disabled: true)
  final DateTime? createdAt;
  @override
  @RfControl(disabled: true)
  final DateTime? updatedAt;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  final Color? colorPick;
  final List<SelectedFile> _featuredImageUpload;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @ignore
  @RfControl()
  List<SelectedFile> get featuredImageUpload {
    if (_featuredImageUpload is EqualUnmodifiableListView)
      return _featuredImageUpload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredImageUpload);
  }

  @override
  String toString() {
    return 'FooDto(id: $id, title: $title, excerpt: $excerpt, color: $color, featuredImage: $featuredImage, createdAt: $createdAt, updatedAt: $updatedAt, colorPick: $colorPick, featuredImageUpload: $featuredImageUpload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.featuredImage, featuredImage) ||
                other.featuredImage == featuredImage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.colorPick, colorPick) ||
                other.colorPick == colorPick) &&
            const DeepCollectionEquality()
                .equals(other._featuredImageUpload, _featuredImageUpload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      excerpt,
      color,
      featuredImage,
      createdAt,
      updatedAt,
      colorPick,
      const DeepCollectionEquality().hash(_featuredImageUpload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FooDtoImplCopyWith<_$FooDtoImpl> get copyWith =>
      __$$FooDtoImplCopyWithImpl<_$FooDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooDtoImplToJson(
      this,
    );
  }
}

abstract class _FooDto extends FooDto {
  factory _FooDto(
      {@RfControl(disabled: true) final int id,
      @RfControl(validators: [RequiredValidator()]) final String title,
      @RfControl() final String excerpt,
      @RfControl() final int color,
      @RfControl() final String featuredImage,
      @RfControl(disabled: true) final DateTime? createdAt,
      @RfControl(disabled: true) final DateTime? updatedAt,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      final Color? colorPick,
      @JsonKey(includeFromJson: false, includeToJson: false)
      @ignore
      @RfControl()
      final List<SelectedFile> featuredImageUpload}) = _$FooDtoImpl;
  _FooDto._() : super._();

  factory _FooDto.fromJson(Map<String, dynamic> json) = _$FooDtoImpl.fromJson;

  @override
  @RfControl(disabled: true)
  int get id;
  @override
  @RfControl(validators: [RequiredValidator()])
  String get title;
  @override
  @RfControl()
  String get excerpt;
  @override
  @RfControl()
  int get color;
  @override
  @RfControl()
  String get featuredImage;
  @override
  @RfControl(disabled: true)
  DateTime? get createdAt;
  @override
  @RfControl(disabled: true)
  DateTime? get updatedAt;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  Color? get colorPick;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @ignore
  @RfControl()
  List<SelectedFile> get featuredImageUpload;
  @override
  @JsonKey(ignore: true)
  _$$FooDtoImplCopyWith<_$FooDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
