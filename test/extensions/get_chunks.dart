import 'package:simple_list_extensions/simple_list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group(
    'getChunks',
    () {
      test('Get chunks', () {
        final list = [1, 2, 3, 4, 5, 6, 7];
        final result = list.getChunks(3);
        expect(
            result,
            equals([
              [1, 2, 3],
              [4, 5, 6],
              [7]
            ]));
      });

      test(
        'Chunk size is larger than list length',
        () {
          final list = [1, 2];
          final result = list.getChunks(5);
          expect(
              result,
              equals([
                [1, 2]
              ]));
        },
      );

      test('Error when chunk size is zero or negative', () {
        final list = [1, 2, 3];
        expect(() => list.getChunks(0), throwsArgumentError);
        expect(() => list.getChunks(-1), throwsArgumentError);
      });
    },
  );
}
