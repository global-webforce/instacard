import 'package:instacard/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  bool get disposeViewModel => false;

  @override
  Future<void> onViewModelReady(HomeViewModel viewModel) async {
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
    return const Scaffold(
      body: Text("Home"),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) =>
      locator<HomeViewModel>();
}
