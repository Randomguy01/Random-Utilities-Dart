import 'package:random_utilities_dart/string_utilities.dart';
import 'package:test/test.dart';

void main() {
  group('RandomStringExtension', () {
    group('.replaceAt()', () {
      late String test_string;

      //Creates a String to test replaceAt() on
      setUp(() {
        test_string = "Hello World";
      });

      //Tests replacing the character at index 0 with another character
      test("Character: Index 0", () {
        test_string = test_string.replaceAt(0, "R");
        expect(test_string, equals("Rello World"));
      });

      //Tests replacing the character at the last index with another character
      test("Character: Index length-1", () {
        test_string = test_string.replaceAt(test_string.length - 1, "R");
        expect(test_string, equals("Hello WorlR"));
      });

      //Tests replacing a character at an arbitrary index with another character
      test("Character: Fixed Index", () {
        test_string = test_string.replaceAt(5, "R");
        expect(test_string, equals("HelloRWorld"));
      });

      //Tests replacing a character with another character twice
      test("Character: Fixed Index 2", () {
        test_string = test_string.replaceAt(5, "R");
        test_string = test_string.replaceAt(5, "r");
        expect(test_string, equals("HellorWorld"));
      });

      //Tests replacing a character at index 0 with a word
      test("Word: Index 0", () {
        test_string = test_string.replaceAt(0, "Oh, H");
        expect(test_string, equals("Oh, Hello World"));
      });

      //Tests replacing a character at the last index with a word
      test("Word: Index length-1", () {
        test_string =
            test_string.replaceAt(test_string.length - 1, "d, and you");
        expect(test_string, equals("Hello World, and you"));
      });

      //Tests replacing a character at an arbitrary index with a word
      test("Word: Fixed Index", () {
        test_string = test_string.replaceAt(5, "TEST");
        expect(test_string, equals("HelloTESTWorld"));
      });

      //Tests replacing a character at an index with a word twice
      test("Word: Fixed Index 2", () {
        test_string = test_string.replaceAt(5, "TEST");
        test_string = test_string.replaceAt(6, "HIR");
        expect(test_string, equals("HelloTHIRSTWorld"));
      });

      //Tests replacing value at index -1 throws a RangeError
      test("Error: Index -1", () {
        expect(() => test_string.replaceAt(-1, "R"), throwsRangeError);
      });

      //Tests replacing value at index = length throws a RangeError
      test("Error: Index length", () {
        expect(() {
          test_string.replaceAt(test_string.length, "R");
        }, throwsRangeError);
      });
    });
  });
}
