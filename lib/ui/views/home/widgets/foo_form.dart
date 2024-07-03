import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instacard/app/app.locator.dart';
import 'package:instacard/models/foo_dto.dart';
import 'package:instacard/services/foo_service.dart';
import 'package:instacard/ui/common/ui_helpers.dart';
import 'package:reactive_color_picker/reactive_color_picker.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

class FooForm extends StatelessWidget {
  final FooDto model;
  const FooForm({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return FooDtoFormBuilder(
        model: model,
        builder: (context, formModel, child) {
          return Card(
              margin: const EdgeInsets.all(0),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      ReactiveFooDtoFormConsumer(
                          builder: (context, formModel, child) {
                        return Text(formModel.form.pristine.toString());
                      }),
                      ReactiveMaterialColorPicker<Color>(
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
                          return ElevatedButton(
                            onPressed: formModel.form.valid
                                ? () async {
                                    await locator<FooService>()
                                        .create(formModel.model);
                                    formModel.form.reset();
                                    formModel.updateValue(FooDto());
                                    formModel.form.unfocus();
                                  }
                                : null,
                            child: const Text('CONTINUE'),
                          );
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          formModel.form.reset();
                          formModel.updateValue(FooDto());
                          formModel.form.unfocus();
                        },
                        child: const Text('RESET'),
                      ),
                    ],
                  )));
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
      inputBuilder: (onPressed) => TextButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add),
        label: const Text('Add an image'),
      ),
    );
  }
}
