void main() {
  var myText = 'aaaa bb ccccc d';  //input your text
  var index = 0;
  List chars = [''];
  for (var i = 0; i < myText.length; i++) {
    if (myText[i] != ' ') {
      chars[index] += myText[i];
    } else {
      index++;
      chars.add('');
    }
  }


  var longWord = '';
  var shortWord = '';
  shortWord = chars[0];
  longWord = chars[0];


  for (var i in chars) {
    if (i.length > longWord.length) {
      longWord = i;
    }
    if (i.length < shortWord.length) {
      shortWord = i;
    }
  }
  print("longword = $longWord \nshortword = $shortWord");
}
