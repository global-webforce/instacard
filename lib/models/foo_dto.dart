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

const int defaultColor = 0xFF9C27B0;

@freezed
@Collection(ignore: {'copyWith'})
@Rf()
class FooDto with _$FooDto {
  FooDto._();
  factory FooDto({
    @RfControl(disabled: true) @Default(Isar.autoIncrement) Id id,
    @RfControl(validators: [
      RequiredValidator(),
    ])
    @Default('')
    String title,
    @RfControl() @Default('') String excerpt,
    @RfControl() @Default(defaultColor) int color,
    @RfControl() @Default('') String featuredImage,
    @RfControl(disabled: true) DateTime? createdAt,
    @RfControl(disabled: true) DateTime? updatedAt,
    @ignore
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @RfControl()
    @Default(Color(defaultColor))
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

  /// If true, model don't exists on DB - suitable for insertion.
  /// If false, model already exists on DB - suitable for update.
  @ignore
  get hasValidId => id >= 0 ? true : false;

  @ignore
  List<SelectedFile> get getFeaturedImage => hasValidId
      ? [
          if (featuredImage.isNotEmpty)
            SelectedFile.image(
              url: featuredImage.toString(),
            )
        ]
      : featuredImageUpload;

  factory FooDto.fromJson(Map<String, dynamic> json) =>
      _$FooDtoFromJson(json.map((key, value) => MapEntry(
          key, key == 'id' && value is String ? fastHash(value) : value)));

  Future<FooDto> fromForm() async {
    FooDto item = this;
    item = await saveFeaturedImage();
    item = item.copyWith(color: colorPick?.value ?? defaultColor);
    item = item.copyWith(
      createdAt: hasValidId ? createdAt : Timestamp.now().toDate(),
      updatedAt: hasValidId ? Timestamp.now().toDate() : updatedAt,
    );
    return item;
  }

  FooDto toForm() {
    FooDto item = this;
    item = item.copyWith(colorPick: Color(color), featuredImageUpload: [
      if (featuredImage.isNotEmpty) SelectedFile.image(url: featuredImage)
    ]);
    return item;
  }

  factory FooDto.fromFirestore(
          DocumentSnapshot snapshot, SnapshotOptions? options) =>
      FooDto.fromJson(snapshot.data() as Map<String, dynamic>);

  static Map<String, Object?> toFirestore(FooDto foo, SetOptions? options) =>
      foo.toJson();

  /// Save the Files inside featuredImageUpload and assigns the file storage path on featuredImage.
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
        hasValidId && hasPendingFiles() && featuredImage.isNotEmpty;
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
}
