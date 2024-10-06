import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'replaceAt',
    () {
      test('Replace at index', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.replaceAt(0, 0);

        expect(result, orderedEquals([0, 2, 3, 4, 5]));
      });
      test('Index is out of bounds', () {
        final list = [1, 2, 3, 4, 5];

        expect(() => list.replaceAt(10, 0), throwsRangeError);
        expect(() => list.replaceAt(-1, 0), throwsRangeError);
      });
    },
  );
}
