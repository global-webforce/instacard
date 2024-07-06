import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/ui/common/screen_scaffold.dart';
import 'package:instacard/ui/views/foo_single/widgets/foo_form.dart';
import 'package:stacked/stacked.dart';

import 'foo_single_viewmodel.dart';

class FooSingleView extends StackedView<FooSingleViewModel> {
  final FooDto foo;
  const FooSingleView(this.foo, {Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FooSingleViewModel viewModel,
    Widget? child,
  ) {
    return ScreenScaffold(
        isBusy: viewModel.isBusy,
        title: "",
        actions: const [],
        body: const CustomScrollView(
          slivers: [SliverToBoxAdapter(child: FooForm())],
        ));
  }

  @override
  void onViewModelReady(FooSingleViewModel viewModel) {
    viewModel.formModel = foo;
    viewModel.formModelOrig = foo;
    super.onViewModelReady(viewModel);
  }

  @override
  FooSingleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FooSingleViewModel();
}
