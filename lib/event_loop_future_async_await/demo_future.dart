void method1(){
  var myArray = <String>['a','b','c'];
  print('before loop  method1() ');
  myArray.forEach((String value) async {
    await delayedPrint(value);
  });
  print('end of loop  method1()');
}

void method2() async {
  var myArray = <String>['a','b','c'];
  print('before loop  method2()');
  for(var i=0; i<myArray.length; i++) {
    await delayedPrint(myArray[i]);
  }
  print('end of loop  method2()');
}

Future<void> delayedPrint(String value) async {
  await Future.delayed(Duration(seconds: 3));
  print('delayedPrint: $value');
}

void main(List<String> arguments) {
  method1();
  method2();
}










// before loop  method1()
// end of loop  method1()
// before loop  method2()
// delayedPrint: a
// delayedPrint: b
// delayedPrint: c
// delayedPrint: a
// delayedPrint: b
// delayedPrint: c
// end of loop  method2()