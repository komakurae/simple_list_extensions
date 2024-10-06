extension ReplaceAtExtension<T> on List<T> {
  List<T> replaceAt(int index, T newValue) {
    final list = [...this];

    list[index] = newValue;

    return list;
  }
}
