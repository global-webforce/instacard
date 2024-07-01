import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
abstract class LocalStorageService implements InitializableDependency {
  bool get enableLogs;
  Set<String> getKeys();
  Object? getFromDisk(String key);
  void saveToDisk(String key, dynamic content);
  void dispose();
}
