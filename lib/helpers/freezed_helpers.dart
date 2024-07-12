import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

int fastHash(String string) {
  var hash = 0xcbf29ce484222325;
  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }
  return hash;
}

class TimestampSerializer implements JsonConverter<DateTime, dynamic> {
  const TimestampSerializer();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

class ColorSerializer implements JsonConverter<Color, int> {
  const ColorSerializer();
  static const Color defaultColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  Color fromJson(int? json) => json == null ? defaultColor : Color(json);

  @override
  int toJson(Color? o) => o?.value ?? defaultColor.value;
}

/// Returns the image path after successful save.
/// Eg: Image( image: FileImage(File(image_path)),
Future<String> saveImageToLocal(XFile? featuredImageUpload) async {
  try {
    if (featuredImageUpload != null) {
      final dir = await getApplicationDocumentsDirectory();
      String fileName = path.basename(featuredImageUpload.name);
      String filePath = path.join(dir.path, fileName);

      // Check for filename collision and append timestamp if necessary
      if (await File(filePath).exists()) {
        String extension = path.extension(fileName);
        String baseName = path.basenameWithoutExtension(fileName);
        String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
        fileName = '${baseName}_$timestamp$extension';
        filePath = path.join(dir.path, fileName);
      }

      await featuredImageUpload.saveTo(filePath);
      return filePath;
    }
  } catch (e) {
    return "";
  }
  return "";
}

Future deleteImageFromLocal(String filePath) async {
  try {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
      return "";
    }
    return "";
  } catch (e) {
    return "";
  }
}

extension FicListExtension<T> on List<T> {
  /// Maps each element of the list.
  /// The [map] function gets both the original [item] and its [index].
  Iterable<E> mapIndexed<E>(E Function(int index, T item) map) sync* {
    for (var index = 0; index < length; index++) {
      yield map(index, this[index]);
    }
  }
}

class IntToColorConverter implements JsonConverter<Color, int> {
  const IntToColorConverter();

  @override
  Color fromJson(int? val) {
    return val == null ? Colors.red : Color(val);
  }

  @override
  int toJson(Color val) => val.value;
}

class FilePathToFileConverter
    implements JsonConverter<List<SelectedFile>, List<String>> {
  const FilePathToFileConverter();

  @override
  List<SelectedFile> fromJson(List<String>? val) {
    return val == null
        ? []
        : val.mapIndexed((i, e) => SelectedFile.image(url: e)).toList();
  }

  @override

  /// Don't forget to update this with actual path file of saved images!!!
  List<String> toJson(List<SelectedFile> val) =>
      val.map((e) => e.toString()).toList();
}
