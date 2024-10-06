extension RemoveDuplicates<T> on List<T> {
  void removeDuplicates() {
    final seen = <T>{};
    retainWhere((element) => seen.add(element));
  }
}
