import 'package:flutter/material.dart';

class Quota {
  String name;
  String abbr;
  Color color;
  double quota;

  Quota(
      {required this.name,
      required this.abbr,
      required this.quota,
      required this.color});
}

List<Quota> def = <Quota>[
  Quota(name: "Bajo", abbr: "B", quota: 15, color: Colors.blue),
  Quota(name: "Medio Bajo", abbr: "IB", quota: 15, color: Colors.yellow),
  Quota(name: "Medio", abbr: "IM", quota: 15, color: Colors.green),
  Quota(name: "Medio Alto", abbr: "IH", quota: 15, color: Colors.orange),
  Quota(name: "Alto", abbr: "H", quota: 15, color: Colors.teal),
  Quota(
      name: "Excedente", abbr: "E", quota: double.infinity, color: Colors.red),
];
