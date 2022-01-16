// ignore_for_file: avoid_print

import 'dart:io';
import 'main.dart';



String playGame(var n, var game) {

  var isCorrect = false;
  var text = "";

  do {

    var input = n;
    var guess = int.tryParse(input!);
    if (guess == null) {
      text = 'กรอกข้อมูลไม่ถูกต้อง ให้กรอกเฉพาะตัวเลขเท่านั้น';
      return text;

    }

    var result = game.doGuess(guess);


  } while (!isCorrect);
  return text;

}