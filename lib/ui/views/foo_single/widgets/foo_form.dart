import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instacard/app/app.locator.dart';
import 'package:instacard/helpers/freezed_helpers.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/services/foo_service.dart';
import 'package:instacard/ui/common/ui_helpers.dart';
import 'package:instacard/ui/views/foo_single/foo_single_viewmodel.dart';
import 'package:reactive_color_picker/reactive_color_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';
import 'package:stacked/stacked.dart';

class FooForm extends StatelessWidget {
  const FooForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = getParentViewModel<FooSingleViewModel>(context);
    return FooDtoFormBuilder(
        key: UniqueKey(),
        model: viewModel.formModel,
        builder: (context, formModel, child) {
          return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  ReactiveTextField<int>(
                    formControl: formModel.idControl,
                    decoration: const InputDecoration(
                      labelText: 'ID',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Title must not be empty',
                    },
                  ),
                  ReactiveTextField<DateTime>(
                    formControl: formModel.createdAtControl,
                    decoration: const InputDecoration(
                      labelText: 'Created At',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Title must not be empty',
                    },
                  ),
                  ReactiveTextField<DateTime>(
                    formControl: formModel.updatedAtControl,
                    decoration: const InputDecoration(
                      labelText: 'Updated At',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Title must not be empty',
                    },
                  ),
                  ReactiveBlockColorPicker(
                    pickerColor: Colors.grey,
                    availableColors: const [
                      Colors.red,
                      Colors.orange,
                      Colors.blue,
                      Colors.purple,
                      Colors.brown,
                      Colors.grey
                    ],
                    formControl: formModel.colorPickControl,
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.titleControl,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Title must not be empty',
                    },
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.excerptControl,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Excerpt',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                          'Excerpt must not be empty',
                    },
                  ),
                  vSpaceMedium,
                  FeaturedImagePicker(
                    formControl: formModel.featuredImageUploadControl,
                  ),
                  vSpaceSmall,
                  ReactiveFooDtoFormConsumer(
                    builder: (context, formModel, child) {
                      return Column(
                        children: [
                          if (formModel.model.hasValidId == false)
                            ElevatedButton(
                              onPressed: formModel.form.valid
                                  ? () async {
                                      await viewModel.create(formModel.model);
                                    }
                                  : null,
                              child: const Text('CREATE'),
                            ),
                          if (formModel.model.hasValidId)
                            ElevatedButton(
                              onPressed: formModel.form.valid
                                  ? () async {
                                      await viewModel.update(formModel.model);
                                    }
                                  : null,
                              child: const Text('UPDATE'),
                            ),
                        ],
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.reset();
                    },
                    child: const Text('RESET'),
                  ),
                ],
              ));
        });
  }
}

class FeaturedImagePicker extends StatelessWidget {
  final FormControl<List<SelectedFile>>? formControl;
  const FeaturedImagePicker({super.key, this.formControl});

  @override
  Widget build(BuildContext context) {
    Future<void> photoDenied(BuildContext context) async =>
        await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Photo access required'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      'Open settings to allow access',
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton(
                  child: const Text('Settings'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

    Future<void> cameraDenied(BuildContext context) async =>
        await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Camera access required'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      'Open settings to allow access',
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton(
                  child: const Text('Settings'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );

    return ReactiveImagePicker(
      formControl: formControl,
      imageContainerDecoration: const BoxDecoration(color: Colors.amber),
      modes: const [ImagePickerMode.cameraImage, ImagePickerMode.galleryImage],
      decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          labelText: 'Image',
          filled: false,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          helperText: ''),
      preprocessError: (e) async {
        if (e is PlatformException) {
          switch (e.code) {
            case 'photo_access_denied':
              await photoDenied(context);
              break;
            case 'camera_access_denied':
              await cameraDenied(context);
              break;
          }
        }
      },
      selectedValueBuilder: (image, handleDelete, handleChange) {
        return Column(
            children: image.mapIndexed((index, image) {
          {
            return Center(
                child: GestureDetector(
              onTap: () => handleChange(context, image),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: AspectRatio(
                  aspectRatio: 4 / 3, // 4:3 aspect ratio
                  child: Image(
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: FileImage(File("${image.url ?? image.file?.path}")),
                    errorBuilder: (context, url, error) => const Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Icon(
                          Icons.image_rounded,
                        ),
                      ),
                    ),
                    loadingBuilder:
                        (_, Widget child, ImageChunkEvent? loadingProgress) {
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
                ),
              ),
            ));
          }
        }).toList());
      },
      inputBuilder: (onPressed) => TextButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add),
        label: const Text('Add an image'),
      ),
    );
  }
}
