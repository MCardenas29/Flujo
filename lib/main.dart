import 'package:flujo_mx/pages/inicio.dart';
import 'package:flujo_mx/pages/monitor.dart';
import 'package:flujo_mx/providers/random_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'consts/app.dart' as const_app;
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View
        .of(context)
        .platformDispatcher
        .platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Play", "Lilita One");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: const_app.name,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const MyHomePage(title: const_app.name),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return ChangeNotifierProvider.value(value: WaterProvider(),
      child:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .surface,
          title: Text(widget.title, style: theme.textTheme.titleLarge),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: "Inicio",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.monitor_heart),
              icon: Icon(Icons.monitor_heart_outlined),
              label: "Monitoreo",
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: "Configuracion",
            ),
          ],
        ),
        body: [
          const Home(),
          const Monitor(),
          const Home()
        ][currentPageIndex],
      ),
    );
  }
}
