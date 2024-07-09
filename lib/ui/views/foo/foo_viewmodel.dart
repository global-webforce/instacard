import 'package:instacard/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/services/foo_service.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FooViewModel extends ReactiveViewModel {
  final _fooService = locator<FooService>();
  final _dialogService = locator<DialogService>();

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

  List<FooDto> get foos => _fooService.items;
  FooDto get selectedItem => _fooService.selectedItem ?? FooDto();

  set selectedItem(FooDto? item) {
    _fooService.selectedItem = item;
  }

  Future init() async {
    setBusy(true);
    try {
      await Future.wait([_fooService.fetchAll()]);
    } catch (e) {
      onFutureError(e, '');
    }

    setBusy(false);
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_fooService];
}
