import 'package:instacard/app/app.locator.dart';
import 'package:instacard/app/app.router.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/ui/common/screen_scaffold.dart';
import 'package:instacard/ui/views/foo/widgets/foo_gridview.dart';
import 'package:flutter/material.dart';
import 'package:instacard/ui/widgets/common/foo_item/foo_item.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'foo_viewmodel.dart';

class FooView extends StackedView<FooViewModel> {
  const FooView({super.key});

  @override
  bool get disposeViewModel => false;

  @override
  Future<void> onViewModelReady(FooViewModel viewModel) async {
    await viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;

  @override
  Widget builder(
    BuildContext context,
    FooViewModel viewModel,
    Widget? child,
  ) {
    return ScreenScaffold(
        refreshIndicatorTask: () => viewModel.init(),
        isBusy: viewModel.isBusy,
        title: "Instacard",
        actions: [
          IconButton.filled(
              onPressed: () async {
                await locator<NavigationService>()
                    .navigateToFooSingleView(foo: FooDto());
              },
              icon: const Icon(Icons.add))
        ],
        body: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            sliver: FooGridView(
              isBusy: viewModel.isBusy,
              size: const Size(double.infinity, 238.0),
              products: viewModel.foos,
              loadingItemBuilder: (context, i) {
                return const Card(
                  margin: EdgeInsets.zero,
                  elevation: 1.0,
                  child: SizedBox(
                    width: double.infinity,
                    height: 238.0,
                  ),
                );
              },
              itemBuilder: (context, i) {
                return FooItem(onTap: () async {
                  await locator<NavigationService>()
                      .navigateToFooSingleView(foo: viewModel.foos[i].toForm());
                }, viewModel.foos[i], const Size(double.infinity, 238.0));
              },
            ),
          ),
        ]));
  }

  @override
  FooViewModel viewModelBuilder(BuildContext context) =>
      locator<FooViewModel>();
}
