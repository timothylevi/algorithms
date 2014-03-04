function isPalindrome (string) {
  var length = string.length;

  for (i = 0; i < length / 2; i++) {
    var j = length - 1 - i;
    if (string[i] != string[j]) {
      return false;
    }
  }

  return true;
}