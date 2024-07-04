import 'package:instacard/models/foo_dto.dart';
import 'package:isar/isar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'foo_service.dart';

@Singleton()
class FooIsarService extends FooService implements InitializableDependency {
  late Future<Isar> _db;

  final ReactiveValue<FooDto?> _selectedItem = ReactiveValue<FooDto?>(FooDto());

  FooIsarService() {
    listenToReactiveValues([_selectedItem]);
  }

  @override
  FooDto get selectedItem => _selectedItem.value ?? FooDto();
  @override
  set selectedItem(FooDto? i) {
    _selectedItem.value = i;
    notifyListeners();
  }

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

    item = await item.saveFeaturedImage();

    await isar.writeTxn(() async {
      await isar.fooDtos.put(item.create());
    });

    selectedItem = item;

    await fetchAll();
  }

  @override
  Future update(FooDto item) async {
    final isar = await _db;

    item = await item.saveFeaturedImage();

    await isar.writeTxn(() async {
      await isar.fooDtos.put(item.update()).then((id) async {
        final FooDto? foo =
            await isar.fooDtos.filter().idEqualTo(id).findFirst();
        selectedItem = foo;
      });
    });
    await fetchAll();
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
