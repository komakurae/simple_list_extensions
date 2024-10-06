import '../utility/models.dart';

extension ReplaceWhereExtension<T> on List<T> {
  List<T> replaceWhere(
    T newValue,
    Condition<T> condition,
  ) {
    final list = [...this];

    for (var i = 0; i < list.length; i++) {
      if (condition(list[i])) {
        list[i] = newValue;
      }
    }

    return list;
  }
}
