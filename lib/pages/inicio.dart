import 'package:fl_chart/fl_chart.dart';
import 'package:flujo_mx/components/info_card.dart';
import 'package:flujo_mx/components/stopcock.dart';
import 'package:flujo_mx/consts/quotas.dart';
import 'package:flujo_mx/providers/random_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [StopCock(), InfoCard()],
            ),
          ],
        )),
        ClipRect(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: const AspectRatio(
              aspectRatio: 1.5,
              child: UsageBar(),
            ),
          ),
        )
      ],
    );
  }
}

class UsageBar extends StatelessWidget {
  const UsageBar({super.key});

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['B', 'IL', 'IM', 'IH', 'H', 'E'];
    String? title = titles.elementAtOrNull(value.toInt());
    if (title == null) return Text(value.toString());
    return Column(
      children: [Text(title), const Text("13")],
    );
  }

  List<BarChartGroupData> generateRods(WaterProvider prov) {
    List<BarChartGroupData> groups = [];
    var used = prov.waterUsed;
    for (int i = 0; i < def.length; i++) {
      var q = def[i];
      double y = used >= q.quota
          ? q.quota
          : used > 0
              ? used
              : 0;
      used -= q.quota;

      groups.add(BarChartGroupData(x: i, barRods: [
        BarChartRodData(
          toY: y,
          color: q.color,
          width: 40,
          borderRadius: BorderRadius.zero,
        )
      ]));
    }

    return groups;
  }

  @override
  Widget build(BuildContext context) {
    var waterProvider = context.watch<WaterProvider>();

    return BarChart(BarChartData(
        maxY: 20,
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
            show: true,
            rightTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 25),
            ),
            topTitles:
                const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: bottomTitles,
                    reservedSize: 40))),
        gridData: const FlGridData(show: false),
        barGroups: generateRods(waterProvider)));
  }
}
