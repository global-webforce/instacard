import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stacked/stacked_annotations.dart';
import 'foo_service.dart';
import 'package:path/path.dart' as path;

@Singleton()
class FooIsarService extends FooService implements InitializableDependency {
  late Future<Isar> _db;

  @override
  Future init() async {
    _db = Future.value(Isar.getInstance());
  }

  @override
  Future fetchAll() async {
    final isar = await _db;
    isar.fooDtos.where().findAll().then((value) => items = value);
  }

  @override
  Future<FooDto?> findById(int id) async {
    final isar = await _db;
    return await isar.fooDtos.filter().idEqualTo(id).findFirst();
  }

  @override
  Future create(FooDto item) async {
    final isar = await _db;
    final image = item.featuredImageUpload?[0];

    String filePath = "";
    if (image != null) {
      final fileName = path.basename("${image.file?.name}");
      final dir = await getApplicationDocumentsDirectory();
      await image.file?.saveTo(path.join(dir.path, fileName));
    }

    await isar.writeTxn(() async {
      await isar.fooDtos.put(item.copyWith(
        createdAt: Timestamp.now().toDate(),
        featuredImage: filePath,
      ));
    });
    await fetchAll();
  }

  @override
  Future update(FooDto item) async {
    final isar = await _db;
    final foo = await findById(item.id);
    if (foo != null) {
      await isar.writeTxn(() async {
        await isar.fooDtos.put(item);
      });
    }
  }

  @override
  Future<void> delete(int id) async {
    final isar = await _db;
    final FooDto? foo = await isar.fooDtos.filter().idEqualTo(id).findFirst();
    if (foo != null) {
      await isar.writeTxn(() async {
        await isar.fooDtos.delete(foo.id);
      });
    }
  }
}
