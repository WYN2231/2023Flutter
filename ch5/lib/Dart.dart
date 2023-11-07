/*

for(var i = 0; i < items.length; i++) {    //보통 쓰는 반복문
  // print(items[i]);
// }

main() {
  final items = [1, 2, 3, 4, 5];

  items.forEach(MyPrint);  ////현재 이 경우는 함수로 정의하고 사용하면 한 번만 사용하게 되어서 함수를 MyPrint 적혀져 있는 곳에 넣어줌
}
  void MyPrint(var e) {
    print(e);
  }

  items.forEach((var e){    ////이런 식으로 함수 부분을 그대로 가져옴 (var같은 타입 생략 가능, dart 문법 특징)
      print(e);
    });
}



main() {
  final items = [1, 2, 3, 4, 5];

  items.map((e) {
    'Number : $e';
  }).forEach(print);
}


main() {
  final items = [1, 2, 3, 4, 5];

  items.map((i) {
    return 'Number : $i';
  }).toList().forEach(print);
}

 */