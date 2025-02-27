// Import the test package and Counter class
import 'package:unit_testing_app/counter_vm.dart';
import 'package:test/test.dart';

// TO TEST A GROUP:  flutter test --plain-name 'Test all counter logic'
// TO TEST A TEST FILE: flutter test test/counter_test.dart
void main() {
  group(
    'Test all counter logic',
    () {
      test('value should start at 0', () {
        expect(Counter().value, 0);
      });

      test('Counter value should be incremented', () {
        final counter = Counter();

        counter.increment();

        expect(counter.value, 1);
      });
      test('value should be decremented', () {
        final counter = Counter();

        counter.decrement();

        expect(counter.value, -1);
      });
    },
  );
}
