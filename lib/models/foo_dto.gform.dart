// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'foo_dto.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveFooDtoFormConsumer extends StatelessWidget {
  const ReactiveFooDtoFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, FooDtoForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFooDtoForm.of(context);

    if (formModel is! FooDtoForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class FooDtoFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const FooDtoFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final FooDtoForm form;
}

class ReactiveFooDtoForm extends StatelessWidget {
  const ReactiveFooDtoForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final FooDtoForm form;

  final WillPopCallback? onWillPop;

  static FooDtoForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<FooDtoFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<FooDtoFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as FooDtoFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return FooDtoFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveFooDtoFormExt on BuildContext {
  FooDtoForm? fooDtoFormWatch() => ReactiveFooDtoForm.of(this);

  FooDtoForm? fooDtoFormRead() => ReactiveFooDtoForm.of(this, listen: false);
}

class FooDtoFormBuilder extends StatefulWidget {
  const FooDtoFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final FooDto? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, FooDtoForm formModel, Widget? child) builder;

  final void Function(BuildContext context, FooDtoForm formModel)? initState;

  @override
  _FooDtoFormBuilderState createState() => _FooDtoFormBuilderState();
}

class _FooDtoFormBuilderState extends State<FooDtoFormBuilder> {
  late FooDtoForm _formModel;

  @override
  void initState() {
    _formModel = FooDtoForm(FooDtoForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant FooDtoFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveFooDtoForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class FooDtoForm implements FormModel<FooDto> {
  FooDtoForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String titleControlName = "title";

  static const String excerptControlName = "excerpt";

  static const String featuredImageControlName = "featuredImage";

  static const String createdAtControlName = "createdAt";

  static const String updatedAtControlName = "updatedAt";

  static const String featuredImageUploadControlName = "featuredImageUpload";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String titleControlPath() => pathBuilder(titleControlName);

  String excerptControlPath() => pathBuilder(excerptControlName);

  String featuredImageControlPath() => pathBuilder(featuredImageControlName);

  String createdAtControlPath() => pathBuilder(createdAtControlName);

  String updatedAtControlPath() => pathBuilder(updatedAtControlName);

  String featuredImageUploadControlPath() =>
      pathBuilder(featuredImageUploadControlName);

  int get _idValue => idControl.value as int;

  String get _titleValue => titleControl.value as String;

  String get _excerptValue => excerptControl.value as String;

  String get _featuredImageValue => featuredImageControl.value as String;

  DateTime? get _createdAtValue => createdAtControl?.value;

  DateTime? get _updatedAtValue => updatedAtControl?.value;

  List<SelectedFile>? get _featuredImageUploadValue =>
      featuredImageUploadControl?.value;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsExcerpt {
    try {
      form.control(excerptControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFeaturedImage {
    try {
      form.control(featuredImageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCreatedAt {
    try {
      form.control(createdAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUpdatedAt {
    try {
      form.control(updatedAtControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFeaturedImageUpload {
    try {
      form.control(featuredImageUploadControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get titleErrors => titleControl.errors;

  Object? get excerptErrors => excerptControl.errors;

  Object? get featuredImageErrors => featuredImageControl.errors;

  Object? get createdAtErrors => createdAtControl?.errors;

  Object? get updatedAtErrors => updatedAtControl?.errors;

  Object? get featuredImageUploadErrors => featuredImageUploadControl?.errors;

  void get idFocus => form.focus(idControlPath());

  void get titleFocus => form.focus(titleControlPath());

  void get excerptFocus => form.focus(excerptControlPath());

  void get featuredImageFocus => form.focus(featuredImageControlPath());

  void get createdAtFocus => form.focus(createdAtControlPath());

  void get updatedAtFocus => form.focus(updatedAtControlPath());

  void get featuredImageUploadFocus =>
      form.focus(featuredImageUploadControlPath());

  void createdAtRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCreatedAt) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          createdAtControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            createdAtControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void updatedAtRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUpdatedAt) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          updatedAtControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            updatedAtControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void featuredImageUploadRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFeaturedImageUpload) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          featuredImageUploadControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            featuredImageUploadControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void excerptValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    excerptControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void featuredImageValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    featuredImageControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void createdAtValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    createdAtControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void updatedAtValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    updatedAtControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void featuredImageUploadValueUpdate(
    List<SelectedFile>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    featuredImageUploadControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void excerptValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    excerptControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void featuredImageValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    featuredImageControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void createdAtValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    createdAtControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void updatedAtValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    updatedAtControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void featuredImageUploadValuePatch(
    List<SelectedFile>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    featuredImageUploadControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void titleValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      titleControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void excerptValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      excerptControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void featuredImageValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      featuredImageControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void createdAtValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      createdAtControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void updatedAtValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      updatedAtControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void featuredImageUploadValueReset(
    List<SelectedFile>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      featuredImageUploadControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<int> get idControl =>
      form.control(idControlPath()) as FormControl<int>;

  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;

  FormControl<String> get excerptControl =>
      form.control(excerptControlPath()) as FormControl<String>;

  FormControl<String> get featuredImageControl =>
      form.control(featuredImageControlPath()) as FormControl<String>;

  FormControl<DateTime>? get createdAtControl => containsCreatedAt
      ? form.control(createdAtControlPath()) as FormControl<DateTime>?
      : null;

  FormControl<DateTime>? get updatedAtControl => containsUpdatedAt
      ? form.control(updatedAtControlPath()) as FormControl<DateTime>?
      : null;

  FormControl<List<SelectedFile>>? get featuredImageUploadControl =>
      containsFeaturedImageUpload
          ? form.control(featuredImageUploadControlPath())
              as FormControl<List<SelectedFile>>?
          : null;

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void excerptSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      excerptControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      excerptControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void featuredImageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      featuredImageControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      featuredImageControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void createdAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      createdAtControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      createdAtControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void updatedAtSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      updatedAtControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      updatedAtControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void featuredImageUploadSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      featuredImageUploadControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      featuredImageUploadControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  FooDto get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'FooDtoForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return FooDto(
        id: _idValue,
        title: _titleValue,
        excerpt: _excerptValue,
        featuredImage: _featuredImageValue,
        createdAt: _createdAtValue,
        updatedAt: _updatedAtValue,
        featuredImageUpload: _featuredImageUploadValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(FooDto model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    FooDto? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(FooDtoForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    FooDto? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(FooDto? fooDto) => FormGroup({
        idControlName: FormControl<int>(
            value: fooDto?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        titleControlName: FormControl<String>(
            value: fooDto?.title,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        excerptControlName: FormControl<String>(
            value: fooDto?.excerpt,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        featuredImageControlName: FormControl<String>(
            value: fooDto?.featuredImage,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        createdAtControlName: FormControl<DateTime>(
            value: fooDto?.createdAt,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        updatedAtControlName: FormControl<DateTime>(
            value: fooDto?.updatedAt,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        featuredImageUploadControlName: FormControl<List<SelectedFile>>(
            value: fooDto?.featuredImageUpload,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveFooDtoFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveFooDtoFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(FooDtoForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, FooDtoForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, FooDtoForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFooDtoForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveFooDtoFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveFooDtoFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      FooDtoForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, FooDtoForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, FooDtoForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFooDtoForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
