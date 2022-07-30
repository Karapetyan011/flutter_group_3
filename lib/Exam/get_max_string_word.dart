void main() {
  var maxWord = '';
  var myString = 'In literary theory, a text is any object that can be "read",'
      ' whether this object is a work of literature, a street sign, an '
      'arrangement of buildings on a city block, or styles of clothing.';
  int t = 0;
  List words = [''];
  for (int i = 0; i < myString.length; i++) {
    if (myString[i] != ' ' && myString[i] != ',' && myString[i] != '.' &&
        myString[i] != ':' && myString[i] != '!') {
      words[t] += myString[i];
    } else {
      t++;
      words.add('');
    }
  }
  maxWord = words[0];
  for (String i in words) {
    if (i.length > maxWord.length) {
      maxWord = i;
    }
  }
  print(maxWord);
}
