import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@LazySingleton()
abstract class CrudService<T> with ListenableServiceMixin {
  CrudService() {
    listenToReactiveValues([_items]);
  }
  final ReactiveValue<List<T>> _items = ReactiveValue<List<T>>([]);
  List<T> get items => _items.value;
  set items(List<T> i) => _items.value = i;
  Future fetchAll();
  Future<T?> findById(int id);
  Future create(T item);
  Future update(T item);
  Future delete(int id);
}
