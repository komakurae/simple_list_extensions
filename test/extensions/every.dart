import 'package:test/test.dart';
import 'package:simple_list_extensions/simple_list_extensions.dart';

void main() {
  group(
    'every',
    () {
      test('Every element meets condition', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.everyElement((element) => element < 10);

        expect(result, true);
      });
      test('Some elements meet condition', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.everyElement((element) => element.isOdd);

        expect(result, false);
      });
      test('No elements meet condition', () {
        final list = [11, 12, 13, 14, 15];
        final result = list.everyElement((element) => element < 10);

        expect(result, false);
      });
    },
  );
}
