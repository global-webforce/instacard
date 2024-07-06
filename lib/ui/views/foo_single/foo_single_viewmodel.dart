import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:instacard/app/app.locator.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/services/foo_service.dart';

class FooSingleViewModel extends ReactiveViewModel {
  final _fooService = locator<FooService>();
  final _dialogService = locator<DialogService>();

  FooDto formModelOrig = FooDto();
  FooDto _formModel = FooDto();
  FooDto get formModel => _formModel.view();
  set formModel(FooDto f) {
    _formModel = f;
    rebuildUi();
  }

  reset() {
    _formModel = formModelOrig;
    rebuildUi();
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

  set selectedItem(FooDto? item) {
    _fooService.selectedItem = item;
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_fooService];
}
