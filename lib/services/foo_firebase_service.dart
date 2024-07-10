import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instacard/helpers/freezed_helpers.dart';
import 'package:instacard/models/foo_dto.dart';

import 'foo_service.dart';

class FooFirebaseService extends FooService {
  FirebaseStorage storage = FirebaseStorage.instance;

  final collectionRef =
      FirebaseFirestore.instance.collection('foos').withConverter(
            fromFirestore: FooDto.fromFirestore,
            toFirestore: FooDto.toFirestore,
          );

  @override
  Future<void> fetchAll() async {
    try {
      await collectionRef
          .orderBy('createdAt', descending: true)
          .get()
          .then((value) {
        items = value.docs.map((e) {
          return e.data().copyWith(id: fastHash(e.id));
        }).toList();
      });
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Future<FooDto?> findById(int id) async {
    await collectionRef.doc(id.toString()).get().then((value) => value.data());
    return null;
  }

  @override
  Future<void> create(FooDto item) async {
    final image = item.featuredImageUpload[0];

    String featuredImage = "";
    for (var i = 0; i < item.featuredImageUpload.length; i++) {
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final dir = 'images/$fileName';
      final storageRef = storage.ref(dir);
      await storageRef.putData(await image.file!.readAsBytes());
      featuredImage = await storageRef.getDownloadURL();
    }

    await collectionRef.add(item.copyWith(
      featuredImage: featuredImage,
      createdAt: Timestamp.now().toDate(),
    ));

    await fetchAll();
  }

  @override
  Future<void> update(FooDto item) async {
    await collectionRef
        .doc(item.id.toString())
        .update(item.copyWith(updatedAt: Timestamp.now().toDate()).toJson());
  }

  @override
  Future delete(FooDto item) async {
    await collectionRef.doc(item.id.toString()).delete();
  }
}
