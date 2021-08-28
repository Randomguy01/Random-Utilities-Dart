import 'package:random_utilities_dart/string_utilities.dart';

void main() {
  //replaceAt() ----------------------------------------------------------------
  //Replace character with another character
  String misspelled = "rello World";
  String fixed = misspelled.replaceAt(0, "H");
  print("Before: $misspelled, After: $fixed");

  //Replace character with another word
  misspelled = "Hello  ";
  fixed = misspelled.replaceAt(misspelled.length - 1, "World");
  print("Before: $misspelled, After: $fixed");
}
