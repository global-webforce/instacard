import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:isar/isar.dart';
import 'package:stacked/stacked_annotations.dart';
import 'foo_service.dart';

@Singleton()
class FooIsarService extends FooService implements InitializableDependency {
  late Future<Isar> _db;

  @override
  Future init() async {
    _db = Future.value(Isar.getInstance());
  }

  @override
  Future fetchAll() async {
    try {
      final isar = await _db;
      isar.fooDtos.where().findAll().then((value) => items = value);
    } catch (e) {
      return e;
    }
  }

  @override
  Future findById(int id) async {
    try {
      final isar = await _db;
      return await isar.fooDtos.filter().idEqualTo(id).findFirst();
    } catch (e) {
      return e;
    }
  }

  @override
  Future create(FooDto item) async {
    try {
      final isar = await _db;
      item = await item.fromForm();

      await isar.writeTxn(() async {
        final id = await isar.fooDtos.put(item);
        item = item.copyWith(id: id);
      });
      await fetchAll();
      return item;
    } catch (e) {
      return e;
    }
  }

  @override
  Future update(FooDto item) async {
    try {
      final isar = await _db;
      item = await item.fromForm();
      await isar.writeTxn(() async {
        await isar.fooDtos.put(item);
      });
      await fetchAll();
      return item;
    } catch (e) {
      return e;
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
