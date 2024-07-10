import 'package:flutter/material.dart';
import 'package:instacard/services/foo_service.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:instacard/app/app.locator.dart';
import 'package:instacard/models/foo_dto.dart';

class FooSingleViewModel extends ReactiveViewModel {
  final _dialogService = locator<DialogService>();
  final _fooService = locator<FooService>();

  FooDto formModelOriginal = FooDto();
  FooDto _formModel = FooDto();
  FooDto get formModel => _formModel;
  set formModel(FooDto model) {
    _formModel = model;
    rebuildUi();
  }

  reset() {
    formModel = formModelOriginal;
    rebuildUi();
  }

  Future create(FooDto item) async {
    final newItem = await _fooService.create(item);
    formModelOriginal = newItem;
    formModel = newItem;
  }

  Future update(FooDto item) async {
    final newItem = await _fooService.create(item);
    formModelOriginal = newItem;
    formModel = newItem;
  }

  Future delete(FooDto item) async {
    await _fooService.delete(item);
    formModelOriginal = FooDto();
    formModel = FooDto();
  }

  @override
  void onFutureError(error, Object? key) {
    super.onFutureError(error, key);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _dialogService.showDialog(
          title: "Error",
          barrierDismissible: true,
          description: error.toString(),
          dialogPlatform: DialogPlatform.Custom,
          buttonTitle: "OK");
    });
  }
}
