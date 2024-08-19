import 'package:fl_chart/fl_chart.dart';
import 'package:flujo_mx/providers/random_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final double quantity = 0;

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['B', 'IL', 'IM', 'IH', 'H', 'S'];
    String? title = titles.elementAtOrNull(value.toInt());
    if (title == null) return Text(value.toString());
    return Column(
      children: [Text(title), const Text("13")],
    );
  }

  List<BarChartGroupData> generateRods() {
    List<BarChartGroupData> groups;

    // BarChartGroupData(x: 0, barRods: [
    //   BarChartRodData(
    //     toY: 14,
    //     color: Colors.red,
    //     width: 40,
    //     borderRadius: BorderRadius.zero,
    //   )
    // ])
    return groups;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: AspectRatio(
            aspectRatio: 1.5,
            child: ChangeNotifierProvider(
              value: WaterProvider,
              child: BarChart(BarChartData(
                  maxY: 20,
                  borderData: FlBorderData(show: false),
                  titlesData: FlTitlesData(
                      show: true,
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      leftTitles: const AxisTitles(
                        sideTitles:
                        SideTitles(showTitles: true, reservedSize: 25),
                      ),
                      topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: bottomTitles,
                              reservedSize: 40))),
                  gridData: const FlGridData(show: false),
                  barGroups: generateRods()
              )),
            )
          ),
        )
      ],
    );
  }
}
