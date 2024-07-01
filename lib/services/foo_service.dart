import 'package:instacard/models/foo_dto.dart';
import 'package:stacked/stacked_annotations.dart';
import 'crud_service.dart';

@LazySingleton()
abstract class FooService extends CrudService<FooDto> {}
