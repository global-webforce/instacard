import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/ui/common/ui_helpers.dart';

class FooGridView extends StatelessWidget {
  final Size size;
  final List<FooDto> products;
  final bool isBusy;
  final Widget? Function(BuildContext, int) loadingItemBuilder;
  final Widget? Function(BuildContext, int) itemBuilder;
  const FooGridView(
      {super.key,
      required this.products,
      required this.itemBuilder,
      required this.size,
      this.isBusy = false,
      required this.loadingItemBuilder});

  @override
  Widget build(BuildContext context) {
    return isBusy
        ? SliverGrid.builder(
            itemCount: 16,
            gridDelegate: SliverGridCrossAxis(
              height: size.height,
              crossAxisCount: Screen.isMobile(context)
                  ? 2
                  : Screen.isTablet(context)
                      ? 3
                      : 7,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) {
              return loadingItemBuilder(context, index);
            },
          )
        : SliverGrid.builder(
            itemCount: products.length,
            gridDelegate: SliverGridCrossAxis(
              height: size.height,
              crossAxisCount: Screen.isMobile(context)
                  ? 2
                  : Screen.isTablet(context)
                      ? 3
                      : 7,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemBuilder: (context, index) => itemBuilder(context, index));
  }
}
