import 'dart:io';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
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

class ColorValueAccessor extends ControlValueAccessor<Color, double> {
  @override
  double modelToViewValue(Color? modelValue) {
    if (modelValue == null) return 0.0;
    return 0.0;
  }

  @override
  Color viewToModelValue(double? viewValue) {
    if (viewValue == null) return Colors.transparent;

    return Colors.purple;
  }
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
  if (featuredImageUpload != null) {
    final fileName = path.basename(featuredImageUpload.name);
    final dir = await getApplicationDocumentsDirectory();

    try {
      await featuredImageUpload.saveTo(path.join(dir.path, fileName));
      return path.join(dir.path, fileName);
    } catch (e) {
      return "";
    }
  }
  return "";
}

Future<bool> deleteImageFromLocal(String filePath) async {
  try {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}
