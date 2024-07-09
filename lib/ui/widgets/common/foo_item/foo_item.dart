import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'foo_item_model.dart';

class FooItem extends StackedView<FooItemModel> {
  final Function() onTap;
  final FooDto foo;
  final Size size;
  const FooItem(this.foo, this.size, {required this.onTap, super.key});

  @override
  Widget builder(
    BuildContext context,
    FooItemModel viewModel,
    Widget? child,
  ) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Builder(builder: (context) {
                    return Card(
                      color: foo.getColor,
                      margin: const EdgeInsets.all(0),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            image: FileImage(File(foo.featuredImage)),
                            errorBuilder: (context, url, error) => Expanded(
                              child: Container(
                                width: double.infinity,
                                color: foo.getColor.darken(0.2),
                                child: const Icon(
                                  Icons.image_rounded,
                                ),
                              ),
                            ),
                            loadingBuilder: (_, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) {
                                // Show the loaded image if loading is complete.
                                return child;
                              } else {
                                // Show a loading indicator with progress information.
                                return Container(
                                  color: Colors.grey[300],
                                  height: 120,
                                  width: double.infinity,
                                );
                              }
                            },
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(foo.id.toString(),
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white)),
                                        Text(foo.title,
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.white)),
                                        Text(foo.excerpt,
                                            maxLines: 2,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  FooItemModel viewModelBuilder(
    BuildContext context,
  ) =>
      FooItemModel();
}
