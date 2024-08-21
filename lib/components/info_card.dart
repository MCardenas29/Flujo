import 'package:flujo_mx/providers/random_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<WaterProvider>();
    var theme = Theme.of(context);
    var price = provider.waterUsed * 4.2;
    NumberFormat formatter = NumberFormat.decimalPatternDigits(
      locale: 'en_us',
      decimalDigits: 2,
    );

    return Expanded(
        child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
                spacing: 5,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Icon(Icons.water_drop_outlined),
                  Text(formatter.format(provider.waterUsed), style: theme.textTheme.bodyLarge)
                ]),
            Text("\$ ${formatter.format(price)}",
                style: theme.textTheme.displaySmall),
            Text("Rango Excedente"),
            Text("Tarifa: Residencial A"),
          ],
        ),
      ),
    ));
  }
}
// Text("Gastado", style: theme.textTheme.titleSmall),
// Text("${provider.waterUsed.toStringAsFixed(2)} m³"),
