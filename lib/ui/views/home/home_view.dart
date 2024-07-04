import 'package:instacard/app/app.locator.dart';
import 'package:instacard/ui/common/screen_scaffold.dart';
import 'package:instacard/ui/views/home/widgets/foo_form.dart';
import 'package:instacard/ui/views/home/widgets/foo_gridview.dart';
import 'package:flutter/material.dart';
import 'package:instacard/ui/widgets/common/foo_item/foo_item.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  bool get disposeViewModel => false;

  @override
  Future<void> onViewModelReady(HomeViewModel viewModel) async {
    await viewModel.init();
    super.onViewModelReady(viewModel);
  }

  @override
  bool get fireOnViewModelReadyOnce => true;

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ScreenScaffold(
        refreshIndicatorTask: viewModel.init,
        isBusy: viewModel.isBusy,
        title: "Instacard",
        actions: const [],
        body: CustomScrollView(slivers: [
          const SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverToBoxAdapter(child: FooForm())),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
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
                return FooItem(onTap: () {
                  viewModel.selectedItem = viewModel.foos[i].view();
                }, viewModel.foos[i], const Size(double.infinity, 238.0));
              },
            ),
          ),
        ]));
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) =>
      locator<HomeViewModel>();
}
