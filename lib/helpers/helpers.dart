import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

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

/// Save the Files inside featuredImageUpload and assigns the file storage path on featuredImage.
Future<String> saveImage(
    List<SelectedFile> files, String path, bool hasValidId) async {
  try {
    bool hasPendingFiles() {
      for (var i = 0; i < files.length; i++) {
        if (files[i].file != null) {
          return true;
        }
      }
      return false;
    }

    String filePath = "";

    bool shouldSaveOnlyImage = hasPendingFiles() && path.isEmpty;
    bool shouldUpdateImage = hasValidId && hasPendingFiles() && path.isNotEmpty;
    bool shouldDeleteImage = hasValidId && files.isEmpty && path.isNotEmpty;

    if (shouldUpdateImage) {
      filePath = await saveImageToLocal(files[0].file);
      await deleteImageFromLocal(path);
      return filePath;
    }

    if (shouldSaveOnlyImage) {
      filePath = await saveImageToLocal(files[0].file);
      return filePath;
    }

    if (shouldDeleteImage) {
      await deleteImageFromLocal(path);
      return "";
    }

    return path;
  } catch (e) {
    return path;
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

bool isNullEmpty(Object? o) =>
    null == o || o == '' || o.toString().trim().isEmpty;

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
