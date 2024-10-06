extension ListExtensions<T> on List<T> {
  List<List<T>> getChunks(int chunkSize) {
    if (chunkSize <= 0) {
      throw ArgumentError("Chunk size must be greater than 0.");
    }
    List<List<T>> chunks = [];
    for (var i = 0; i < length; i += chunkSize) {
      chunks.add(sublist(i, (i + chunkSize > length) ? length : i + chunkSize));
    }
    return chunks;
  }
}
