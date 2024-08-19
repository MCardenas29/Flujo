
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class WaterProvider extends ChangeNotifier {
  static final WaterProvider _singleton = WaterProvider._internal();
  double waterUsed;
  double lastUsage;

  factory WaterProvider() => _singleton;

  WaterProvider._internal({this.waterUsed = 0, this.lastUsage = 0}) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var source = Random();
      var q = source.nextDouble() * 10.0;
      addWater(quantity: q);
    });
  }


  void addWater({ required double quantity }) async {
    lastUsage = quantity;
    waterUsed += quantity;
    notifyListeners();
  }
}