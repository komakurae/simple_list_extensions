extension SplitBy<T> on List<T> {
  List<List<T>> splitBy(bool Function(T element) condition) {
    List<List<T>> result = [];
    List<T> current = [];

    for (T element in this) {
      if (condition(element)) {
        if (current.isNotEmpty) {
          result.add(current);
        }
        current = [];
      } else {
        current.add(element);
      }
    }

    if (current.isNotEmpty) {
      result.add(current);
    }

    return result;
  }
}
