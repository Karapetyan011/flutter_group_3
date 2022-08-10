/// Ստանալ ֆունկցիա, որը կընդունի String text պարամետրը ու կվերադարձնի տվյալ text-i ամենաերկար բառը։

/// ԿԱՐԵւՎՈՐ, չեք կարող օգտվել List-ի default մեթոդներից(օր sort()), ու String-ի default մեթոդներից(Oր. split(' ')).
/// այսինքն ձեր լոգիկան բդի գրեք։
/// Հուշում։
/// Բառերը բաժանված են space-ով (' '),
/// String-ի char-երը կռնաք վերցնեք List-i նման։

String getLargeWord(String text) {
  String largeWord = '';

  List<String> list = [];

  for (int i = 0; i < text.length; i++) {
    String word = '';
    while (i < text.length && text[i] != ' ') {
      word = word + text[i];
      i++;
    }
    list.add(word);
  }

  largeWord = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i].length > largeWord.length) {
      largeWord = list[i];
    }
  }
  return largeWord;
}

void main() {
  print(getLargeWord(
      'List1    List22 List333 List4444 List55555 List666666 List7777777'));
}
