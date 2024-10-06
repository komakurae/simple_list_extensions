extension AddAtExtension<T> on List<T> {
  void addAt(int index, T newValue) {
    if (index < 0 || index > length) {
      throw RangeError.index(
          index, this, 'index', 'Index out of range', length);
    }

    // Add an element at the end to increase the length
    add(newValue);

    // Shift elements to the right
    for (int i = length - 1; i > index; i--) {
      this[i] = this[i - 1];
    }

    // Insert the new element at the correct index
    this[index] = newValue;
  }
}
