extension RandomStringExtensions on String {
  ///Replaces a String at the specified [index] with a [replacement] String.
  String replaceAt(int index, String replacement) {
    return this.substring(0, index) + replacement + this.substring(index + 1);
  }
}
