import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';
part 'foo_dto.freezed.dart';
part 'foo_dto.g.dart';
part 'foo_dto.gform.dart';

@freezed
@Collection(ignore: {'copyWith'})
@Rf()
class FooDto with _$FooDto {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  FooDto._();
  factory FooDto({
    @RfControl() @Default(Isar.autoIncrement) Id id,
    @RfControl() @Default('') String title,
    @RfControl() @Default('') String excerpt,
    @RfControl() @Default('') String featuredImage,
    @RfControl() DateTime? createdAt,
    @RfControl() DateTime? updatedAt,
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @ignore
    @RfControl()
    List<SelectedFile>? featuredImageUpload,
  }) = _FooDto;

  // ignore: recursive_getters, annotate_overrides
  Id get id => id;

  factory FooDto.fromJson(Map<String, dynamic> json) => _$FooDtoFromJson({
        ...json,
        'id': json['id'] is String ? int.tryParse(json['id']) ?? 0 : json['id'],
      });

  factory FooDto.fromFirestore(
          DocumentSnapshot snapshot, SnapshotOptions? options) =>
      FooDto.fromJson(snapshot.data() as Map<String, dynamic>);

  static Map<String, Object?> toFirestore(FooDto foo, SetOptions? options) =>
      foo.toJson();
}
