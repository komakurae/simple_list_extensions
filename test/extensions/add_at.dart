import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'addAt',
    () {
      test('Add at index ', () {
        final list = [1, 2, 3, 4, 5];
        list.addAt(3, -1);

        expect(list, orderedEquals([1, 2, 3, -1, 4, 5]));
      });
      test('Index is out of bounds', () {
        final list = [1, 2, 3, 4, 5];

        expect(() => list.addAt(10, -1), throwsRangeError);
        expect(() => list.addAt(-1, -1), throwsRangeError);
      });
    },
  );
}
