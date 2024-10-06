import '../utility/models.dart';

extension EveryExtension<T> on List<T> {
  bool everyElement(Condition<T> condition) {
    for (final element in this) {
      if (!condition(element)) {
        return false;
      }
    }

    return true;
  }
}
