import 'package:flutter/material.dart';

class SeaFishModel with ChangeNotifier{
  final String name;
  int tunanumber;
  final String size;

  SeaFishModel({
    required this.name,
    required this.tunanumber,
    required this.size,
  });


  void changeSeaFishNumber() {
    tunanumber++;
    // 상태의 변화를 관찰하는 리스너!!
    notifyListeners();
  }
}