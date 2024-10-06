import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'replaceWhere',
    () {
      test('One element meets condition', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.replaceWhere(-1, (element) => element == 1);

        expect(result, orderedEquals([-1, 2, 3, 4, 5]));
      });
      test('Some elements meet condition', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.replaceWhere(0, (element) => element.isOdd);

        expect(result, orderedEquals([0, 2, 0, 4, 0]));
      });
      test('No elements meets condition', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.replaceWhere(-1, (element) => element > 10);

        expect(result, orderedEquals(list));
      });
    },
  );
}
