import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'removeDuplicates',
    () {
      test('No duplicates', () {
        final list = [1, 2, 3, 4, 5];
        list.removeDuplicates();
        expect(list, [1, 2, 3, 4, 5]);
      });
    },
  );
}
