import 'mappable.dart';

extension MappableExtension<T extends Mappable<T>> on T {
  T toModel() {
    return this.toModel();
  }
}

extension MappableListExtension<T extends Mappable<T>> on List<T> {
  List<T> toModelList() {
    return map((item) => item.toModel()).toList();
  }
}