import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instacard/helpers/freezed_helpers.dart';
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

    String featuredImage = "";
    for (var i = 0; i < item.featuredImageUpload.length; i++) {
      featuredImage = await saveImageToLocal(item.featuredImageUpload[i].file);
    }

    await isar.writeTxn(() async {
      await isar.fooDtos.put(item.copyWith(
          featuredImage: featuredImage,
          createdAt: Timestamp.now().toDate(),
          color: item.colorPick?.value ?? Colors.red.value));
    });

    selectedItem = item;

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
