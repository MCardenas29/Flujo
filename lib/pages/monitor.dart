import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/random_provider.dart';

class Monitor extends StatelessWidget {
  const Monitor({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<WaterProvider>();
    var theme = Theme.of(context);

    return Column(
      children: [
        ClipRect(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: LineChart(LineChartData(

              )),
            ),
          ),
        )
      ],
    );
  }
}
