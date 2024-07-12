// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'digital_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DigitalCardDTO _$DigitalCardDTOFromJson(Map<String, dynamic> json) {
  return _DigitalCardDTO.fromJson(json);
}

/// @nodoc
mixin _$DigitalCardDTO {
  int get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get addedToContactsAt => throw _privateConstructorUsedError;
  @RfControl()
  int get color => throw _privateConstructorUsedError;
  @RfControl()
  String get title => throw _privateConstructorUsedError;
  @RfControl()
  String get firstName => throw _privateConstructorUsedError;
  @RfControl()
  String get prefix => throw _privateConstructorUsedError;
  @RfControl()
  String get middleName => throw _privateConstructorUsedError;
  @RfControl()
  String get lastName => throw _privateConstructorUsedError;
  @RfControl()
  String get suffix => throw _privateConstructorUsedError;
  @RfControl()
  int get layout => throw _privateConstructorUsedError;
  @RfControl()
  String get position => throw _privateConstructorUsedError;
  @RfControl()
  String get company => throw _privateConstructorUsedError;
  @RfControl()
  String get headline => throw _privateConstructorUsedError;
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl(validators: [RequiredValidator()])
  List<Map<String, dynamic>> get customLinks =>
      throw _privateConstructorUsedError;
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  dynamic get avatarFile => throw _privateConstructorUsedError;
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  dynamic get logoFile => throw _privateConstructorUsedError;
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  Color? get colorPick => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigitalCardDTOCopyWith<DigitalCardDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigitalCardDTOCopyWith<$Res> {
  factory $DigitalCardDTOCopyWith(
          DigitalCardDTO value, $Res Function(DigitalCardDTO) then) =
      _$DigitalCardDTOCopyWithImpl<$Res, DigitalCardDTO>;
  @useResult
  $Res call(
      {int id,
      String userId,
      String uuid,
      String logoUrl,
      String avatarUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? addedToContactsAt,
      @RfControl() int color,
      @RfControl() String title,
      @RfControl() String firstName,
      @RfControl() String prefix,
      @RfControl() String middleName,
      @RfControl() String lastName,
      @RfControl() String suffix,
      @RfControl() int layout,
      @RfControl() String position,
      @RfControl() String company,
      @RfControl() String headline,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl(validators: [RequiredValidator()])
      List<Map<String, dynamic>> customLinks,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      dynamic avatarFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      dynamic logoFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      Color? colorPick});
}

/// @nodoc
class _$DigitalCardDTOCopyWithImpl<$Res, $Val extends DigitalCardDTO>
    implements $DigitalCardDTOCopyWith<$Res> {
  _$DigitalCardDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? uuid = null,
    Object? logoUrl = null,
    Object? avatarUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? addedToContactsAt = freezed,
    Object? color = null,
    Object? title = null,
    Object? firstName = null,
    Object? prefix = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? suffix = null,
    Object? layout = null,
    Object? position = null,
    Object? company = null,
    Object? headline = null,
    Object? customLinks = null,
    Object? avatarFile = freezed,
    Object? logoFile = freezed,
    Object? colorPick = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      addedToContactsAt: freezed == addedToContactsAt
          ? _value.addedToContactsAt
          : addedToContactsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      customLinks: null == customLinks
          ? _value.customLinks
          : customLinks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logoFile: freezed == logoFile
          ? _value.logoFile
          : logoFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      colorPick: freezed == colorPick
          ? _value.colorPick
          : colorPick // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DigitalCardDTOImplCopyWith<$Res>
    implements $DigitalCardDTOCopyWith<$Res> {
  factory _$$DigitalCardDTOImplCopyWith(_$DigitalCardDTOImpl value,
          $Res Function(_$DigitalCardDTOImpl) then) =
      __$$DigitalCardDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userId,
      String uuid,
      String logoUrl,
      String avatarUrl,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? addedToContactsAt,
      @RfControl() int color,
      @RfControl() String title,
      @RfControl() String firstName,
      @RfControl() String prefix,
      @RfControl() String middleName,
      @RfControl() String lastName,
      @RfControl() String suffix,
      @RfControl() int layout,
      @RfControl() String position,
      @RfControl() String company,
      @RfControl() String headline,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl(validators: [RequiredValidator()])
      List<Map<String, dynamic>> customLinks,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      dynamic avatarFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      dynamic logoFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      Color? colorPick});
}

/// @nodoc
class __$$DigitalCardDTOImplCopyWithImpl<$Res>
    extends _$DigitalCardDTOCopyWithImpl<$Res, _$DigitalCardDTOImpl>
    implements _$$DigitalCardDTOImplCopyWith<$Res> {
  __$$DigitalCardDTOImplCopyWithImpl(
      _$DigitalCardDTOImpl _value, $Res Function(_$DigitalCardDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? uuid = null,
    Object? logoUrl = null,
    Object? avatarUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? addedToContactsAt = freezed,
    Object? color = null,
    Object? title = null,
    Object? firstName = null,
    Object? prefix = null,
    Object? middleName = null,
    Object? lastName = null,
    Object? suffix = null,
    Object? layout = null,
    Object? position = null,
    Object? company = null,
    Object? headline = null,
    Object? customLinks = null,
    Object? avatarFile = freezed,
    Object? logoFile = freezed,
    Object? colorPick = freezed,
  }) {
    return _then(_$DigitalCardDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      addedToContactsAt: freezed == addedToContactsAt
          ? _value.addedToContactsAt
          : addedToContactsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: null == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      customLinks: null == customLinks
          ? _value._customLinks
          : customLinks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logoFile: freezed == logoFile
          ? _value.logoFile
          : logoFile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      colorPick: freezed == colorPick
          ? _value.colorPick
          : colorPick // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DigitalCardDTOImpl extends _DigitalCardDTO {
  _$DigitalCardDTOImpl(
      {this.id = Isar.autoIncrement,
      this.userId = '',
      this.uuid = '',
      this.logoUrl = '',
      this.avatarUrl = '',
      this.createdAt,
      this.updatedAt,
      this.addedToContactsAt,
      @RfControl() this.color = defaultColor,
      @RfControl() this.title = "New Card",
      @RfControl() this.firstName = '',
      @RfControl() this.prefix = '',
      @RfControl() this.middleName = '',
      @RfControl() this.lastName = '',
      @RfControl() this.suffix = '',
      @RfControl() this.layout = 0,
      @RfControl() this.position = '',
      @RfControl() this.company = '',
      @RfControl() this.headline = '',
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl(validators: [RequiredValidator()])
      final List<Map<String, dynamic>> customLinks = const [],
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      this.avatarFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      this.logoFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      this.colorPick = const Color(defaultColor)})
      : _customLinks = customLinks,
        super._();

  factory _$DigitalCardDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DigitalCardDTOImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String logoUrl;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? addedToContactsAt;
  @override
  @JsonKey()
  @RfControl()
  final int color;
  @override
  @JsonKey()
  @RfControl()
  final String title;
  @override
  @JsonKey()
  @RfControl()
  final String firstName;
  @override
  @JsonKey()
  @RfControl()
  final String prefix;
  @override
  @JsonKey()
  @RfControl()
  final String middleName;
  @override
  @JsonKey()
  @RfControl()
  final String lastName;
  @override
  @JsonKey()
  @RfControl()
  final String suffix;
  @override
  @JsonKey()
  @RfControl()
  final int layout;
  @override
  @JsonKey()
  @RfControl()
  final String position;
  @override
  @JsonKey()
  @RfControl()
  final String company;
  @override
  @JsonKey()
  @RfControl()
  final String headline;
  final List<Map<String, dynamic>> _customLinks;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl(validators: [RequiredValidator()])
  List<Map<String, dynamic>> get customLinks {
    if (_customLinks is EqualUnmodifiableListView) return _customLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customLinks);
  }

  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  final dynamic avatarFile;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  final dynamic logoFile;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  final Color? colorPick;

  @override
  String toString() {
    return 'DigitalCardDTO(id: $id, userId: $userId, uuid: $uuid, logoUrl: $logoUrl, avatarUrl: $avatarUrl, createdAt: $createdAt, updatedAt: $updatedAt, addedToContactsAt: $addedToContactsAt, color: $color, title: $title, firstName: $firstName, prefix: $prefix, middleName: $middleName, lastName: $lastName, suffix: $suffix, layout: $layout, position: $position, company: $company, headline: $headline, customLinks: $customLinks, avatarFile: $avatarFile, logoFile: $logoFile, colorPick: $colorPick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DigitalCardDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.addedToContactsAt, addedToContactsAt) ||
                other.addedToContactsAt == addedToContactsAt) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            const DeepCollectionEquality()
                .equals(other._customLinks, _customLinks) &&
            const DeepCollectionEquality()
                .equals(other.avatarFile, avatarFile) &&
            const DeepCollectionEquality().equals(other.logoFile, logoFile) &&
            (identical(other.colorPick, colorPick) ||
                other.colorPick == colorPick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        uuid,
        logoUrl,
        avatarUrl,
        createdAt,
        updatedAt,
        addedToContactsAt,
        color,
        title,
        firstName,
        prefix,
        middleName,
        lastName,
        suffix,
        layout,
        position,
        company,
        headline,
        const DeepCollectionEquality().hash(_customLinks),
        const DeepCollectionEquality().hash(avatarFile),
        const DeepCollectionEquality().hash(logoFile),
        colorPick
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DigitalCardDTOImplCopyWith<_$DigitalCardDTOImpl> get copyWith =>
      __$$DigitalCardDTOImplCopyWithImpl<_$DigitalCardDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DigitalCardDTOImplToJson(
      this,
    );
  }
}

abstract class _DigitalCardDTO extends DigitalCardDTO {
  factory _DigitalCardDTO(
      {final int id,
      final String userId,
      final String uuid,
      final String logoUrl,
      final String avatarUrl,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? addedToContactsAt,
      @RfControl() final int color,
      @RfControl() final String title,
      @RfControl() final String firstName,
      @RfControl() final String prefix,
      @RfControl() final String middleName,
      @RfControl() final String lastName,
      @RfControl() final String suffix,
      @RfControl() final int layout,
      @RfControl() final String position,
      @RfControl() final String company,
      @RfControl() final String headline,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl(validators: [RequiredValidator()])
      final List<Map<String, dynamic>> customLinks,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      final dynamic avatarFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      final dynamic logoFile,
      @ignore
      @JsonKey(includeFromJson: false, includeToJson: false)
      @RfControl()
      final Color? colorPick}) = _$DigitalCardDTOImpl;
  _DigitalCardDTO._() : super._();

  factory _DigitalCardDTO.fromJson(Map<String, dynamic> json) =
      _$DigitalCardDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get userId;
  @override
  String get uuid;
  @override
  String get logoUrl;
  @override
  String get avatarUrl;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get addedToContactsAt;
  @override
  @RfControl()
  int get color;
  @override
  @RfControl()
  String get title;
  @override
  @RfControl()
  String get firstName;
  @override
  @RfControl()
  String get prefix;
  @override
  @RfControl()
  String get middleName;
  @override
  @RfControl()
  String get lastName;
  @override
  @RfControl()
  String get suffix;
  @override
  @RfControl()
  int get layout;
  @override
  @RfControl()
  String get position;
  @override
  @RfControl()
  String get company;
  @override
  @RfControl()
  String get headline;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl(validators: [RequiredValidator()])
  List<Map<String, dynamic>> get customLinks;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  dynamic get avatarFile;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  dynamic get logoFile;
  @override
  @ignore
  @JsonKey(includeFromJson: false, includeToJson: false)
  @RfControl()
  Color? get colorPick;
  @override
  @JsonKey(ignore: true)
  _$$DigitalCardDTOImplCopyWith<_$DigitalCardDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
