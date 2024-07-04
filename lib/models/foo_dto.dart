import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instacard/helpers/freezed_helpers.dart';
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
    @RfControl() @Default(0xffef5350) int color,
    @RfControl() @Default('') String featuredImage,
    @RfControl() DateTime? createdAt,
    @RfControl() DateTime? updatedAt,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @RfControl()
    @Default(Colors.red)
    Color? colorPick,
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @ignore
    @RfControl()
    @Default([])
    List<SelectedFile> featuredImageUpload,
  }) = _FooDto;

  // ignore: recursive_getters, annotate_overrides
  Id get id => id;

  @ignore
  get allowCreate => id < 0 ? true : false;

  @ignore
  get allowUpdate => id > 0 ? true : false;

  Future<FooDto> saveFeaturedImage() async {
    FooDto item = this;

    bool hasPendingFiles() {
      for (var i = 0; i < featuredImageUpload.length; i++) {
        if (featuredImageUpload[i].file != null) {
          return true;
        }
      }
      return false;
    }

    bool shouldSaveOnlyImage = hasPendingFiles() && featuredImage.isEmpty;
    bool shouldUpdateImage =
        allowUpdate && hasPendingFiles() && featuredImage.isNotEmpty;
    bool shouldDeleteImage =
        featuredImageUpload.isEmpty && featuredImage.isNotEmpty;

    if (shouldUpdateImage) {
      List<String> filePaths = [];
      for (var i = 0; i < featuredImageUpload.length; i++) {
        if (featuredImageUpload[i].file != null) {
          final filePath = await saveImageToLocal(featuredImageUpload[i].file);
          filePaths.add(filePath);
        }
      }
      await deleteImageFromLocal(featuredImage);

      return copyWith(featuredImage: filePaths[0]);
    }

    if (shouldSaveOnlyImage) {
      List<String> filePaths = [];
      for (var i = 0; i < featuredImageUpload.length; i++) {
        if (featuredImageUpload[i].file != null) {
          final filePath = await saveImageToLocal(featuredImageUpload[i].file);
          filePaths.add(filePath);
        }
      }

      return copyWith(featuredImage: filePaths[0]);
    }

    if (shouldDeleteImage) {
      await deleteImageFromLocal(featuredImage);
      return copyWith(featuredImage: "");
    }

    return item;
  }

  factory FooDto.fromJson(Map<String, dynamic> json) =>
      _$FooDtoFromJson(json.map((key, value) => MapEntry(
          key, key == 'id' && value is String ? fastHash(value) : value)));

  factory FooDto.form() {
    return FooDto();
  }

  FooDto view() {
    return copyWith(
      colorPick: Color(color),
      featuredImageUpload: [
        if (featuredImage.isNotEmpty)
          SelectedFile.image(
            url: featuredImage.toString(),
          )
      ],
    );
  }

  FooDto reset() {
    return FooDto(colorPick: Colors.orange, featuredImageUpload: []);
  }

  FooDto create() {
    return copyWith(
      color: colorPick?.value ?? Colors.red.value,
      createdAt: Timestamp.now().toDate(),
    );
  }

  FooDto update() {
    return copyWith(
      color: colorPick?.value ?? Colors.red.value,
      updatedAt: Timestamp.now().toDate(),
    );
  }

  factory FooDto.fromFirestore(
          DocumentSnapshot snapshot, SnapshotOptions? options) =>
      FooDto.fromJson(snapshot.data() as Map<String, dynamic>);

  static Map<String, Object?> toFirestore(FooDto foo, SetOptions? options) =>
      foo.toJson();
}
