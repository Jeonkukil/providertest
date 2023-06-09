import 'package:flutter/material.dart';

class FishModel with ChangeNotifier{
  final String name;
  int number;
  final String size;

  FishModel({
    required this.name,
    required this.number,
    required this.size,
});


  void changeFishNumber() {
    number++;
    // 상태의 변화를 관찰하는 리스너!!
    notifyListeners();
  }
}