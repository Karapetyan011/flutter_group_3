void main() async {
  methodA();
  await methodB();
  await methodC('main');
  methodD();
}

methodA(){
  print('A');
}

methodB() async {
  print('B start');
  await methodC('B');
  print('B end');
}

methodC(String from) async {
  print('C start from $from');

  await Future((){                  // <== изменение здесь
    print('C running Future from $from');
  }).then((_){
    print('C end of Future from $from');
  });
  print('C end from $from');
}

methodD(){
  print('D');
}





// A
// B start
// C start from B
// C running Future from B
// C end of Future from B
// C end from B
// B end
// C start from main
// C running Future from main
// C end of Future from main
// C end from main
// D