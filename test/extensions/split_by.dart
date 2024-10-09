import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    ('splitBy'),
    () {
      test('splitBy met a condition', () {
        final list = [1, 2, 3, 0, 4, 5, 0, 6, 7];
        final result = list.splitBy((x) => x == 0);
        expect(result, [
          [1, 2, 3],
          [4, 5],
          [6, 7]
        ]);
      });

      test('No condition met', () {
        final list = [1, 2, 3, 4, 5];
        final result = list.splitBy((x) => x == 0);
        expect(result, [
          [1, 2, 3, 4, 5]
        ]);
      });
    },
  );
}
