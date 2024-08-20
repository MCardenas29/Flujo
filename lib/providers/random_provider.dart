
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class WaterProvider extends ChangeNotifier {
  static final WaterProvider _singleton = WaterProvider._internal();
  double waterUsed = 0;
  double lastUsage = 0;
  List<double> usages = [];

  factory WaterProvider() => _singleton;

  WaterProvider._internal() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      var source = Random();
      var q = source.nextDouble() * 4.0;
      addWater(quantity: q);
    });
  }


  void addWater({ required double quantity }) async {
    lastUsage = quantity;
    waterUsed += quantity;
    usages.add(quantity);
    notifyListeners();
  }
}