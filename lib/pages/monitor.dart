import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/random_provider.dart';

class Monitor extends StatelessWidget {
  const Monitor({super.key});

  List<FlSpot> getSpots(WaterProvider provider) {
    var spots = <FlSpot>[];

    for (var u in provider.usages) {
      var spot =
          FlSpot(u.timestamp.millisecondsSinceEpoch.toDouble(), u.quantity);
      spots.add(spot);
    }

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<WaterProvider>();
    var theme = Theme.of(context);

    return Column(
      children: [
        ClipRect(
          clipBehavior: Clip.hardEdge,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: LineChart(LineChartData(
                  minY: 0,
                  maxY: 8,
                  minX: DateTime.now()
                      .add(const Duration(seconds: -20))
                      .millisecondsSinceEpoch
                      .toDouble(),
                  maxX: DateTime.now().millisecondsSinceEpoch.toDouble(),
                  gridData: const FlGridData(show: false),
                  borderData: FlBorderData(show: false),
                  titlesData: const FlTitlesData(
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false))),
                  lineBarsData: [
                    LineChartBarData(isCurved: true, spots: getSpots(provider))
                  ])),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: provider.usages.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              var u = provider.usages.reversed.toList()[index];
              return Card(
                  elevation: 0,
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text("${u.quantity}")
                        ],
                      )));
            },
          ),
        )
      ],
    );
  }
}
