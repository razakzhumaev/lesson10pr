import 'dart:io';

void main(List<String> args) {
  showList(['itc', 'razak', '18 year old', 18, true, false]);
  showNumber('123');
  showNumber2('345');
  week1(5);
  week2(6);
  loops('Loading');
  sum(8, 2, 11);
  mean();
  yourAge(19);
  sumOfThree('123321');

  print('Вас зовут');
  String myName = stdin.readLineSync()!;
  print('name = $myName');
  check('razak');

  print('Ваш возраст');
  int myAge = int.parse(stdin.readLineSync()!);
  print('age = $myAge');
  check2(18);

  print('Ваш адрес');
  String myAddress = stdin.readLineSync()!;
  print('address = $myAddress');
  check3('Sabirova 42 street 1');

  print('Ваше хобби');
  String myHobby = stdin.readLineSync()!;
  print('hobby = $myHobby');
  check4('playing tennis');

  print("Введите целое число n: ");
  int n = int.parse(stdin.readLineSync()!);
  int nn = int.parse('$n$n');
  int nnn = int.parse('$n$n$n');

  int result = n + nn + nnn;

  print(result);
}

void showList(List massive) {
  
  print('${massive.first} ${massive.last}');
}

void showNumber(String numberss) {
  // print('${numberss.substring(0,1) * numberss.substring(1,2) * {numberss.substring(2,3) }');
  print(
      " ${int.parse(numberss.substring(0, 1)) * int.parse(numberss.substring(1, 2)) * int.parse(numberss.substring(2, 3))}");
  // print(" ${int.parse(numberss.substring(0,1))}*${int.parse(numberss.substring(1,2))}*${int.parse(numberss.substring(2,3))}");
}

void showNumber2(String ThreeDigitNumber) {

  print(ThreeDigitNumber.substring(0, 1) +
      '0' +
      ThreeDigitNumber.substring(2, 3));
}

void week1(int number) {

  if (number == 1) {
    print('Понедельник');
  } else if (number == 2) {
    print('Вторник');
  } else if (number == 3) {
    print('Среда');
  } else if (number == 4) {
    print('Четверг');
  } else if (number == 5) {
    print('Пятница');
  } else if (number == 6) {
    print('Суббота');
  } else if (number == 7) {
    print('Воскресенье');
  } else {
    print('Ошибка');
  }
}

void week2(int digit) {

  switch (digit) {
    case 1:
      print('Понедельник');
      break;
    case 2:
      print('Вторник');
      break;
    case 3:
      print('Среда');
      break;
    case 4:
      print('Четверг');
      break;
    case 5:
      print('Пятница');
      break;
    case 6:
      print('Суббота');
      break;
    case 7:
      print('Воскресенье');
      break;
    default:
      print('Ошибка');
  }
}

void loops(String load) {

  for (int i = 0; i <= 8; i++) {
    print(load);
  }
}

void sum(int a, int b, int c) {

  if (a + b == c) {
    print('$a + $b = $c');
  } else {
    print(a * b * c);
  }
}

void check(String myName) {

  if (myName == 'razak') {
    print('У нас одинаковое имя');
  }
}

void check2(int myAge) {

  if (myAge == 18) {
    print('Мы ровесники');
  }
}

void check3(String myAddress) {

  if (myAddress == 'Sabirova 42 street 1') {
    print('Мы соседи');
  }
}

void check4(String myHobby) {

  if (myHobby == 'playing tennis') {
    print('У нас одинаковое хобби ');
  }
}

void mean() {
  int sum = 0;

  for (int i = 1; i <= 100; i++) {
    sum += i;
  }
  int average = sum ~/ 100;

  print(average);
}

void yourAge(int age) {

  if (age < 7 && age >= 0) {
    print('Вам в садик');
  } else if (age <= 18 && age >= 7) {
    print('Вам в школу');
  } else if (age < 23 && age > 18) {
    print('Вам в универ');
  } else if (age < 60 && age >= 23) {
    print('Вам на работу');
  } else if (age <= 100 && age >= 60) {
    print('Вы пенсионер');
  } else {
    print('Неправильный возраст');
  }
}

void sumOfThree(String a) {

  if ('${int.parse(a.substring(0, 1)) + int.parse(a.substring(1, 2)) + int.parse(a.substring(2, 3))}' ==
      '${int.parse(a.substring(3, 4)) + int.parse(a.substring(4, 5)) + int.parse(a.substring(5, 6))}') {
    print(true);
  } else {
    print(false);
  }
}
