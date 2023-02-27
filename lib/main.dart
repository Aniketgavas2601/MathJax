import 'package:flutter/material.dart';
import 'package:mathjax/pages/demo_page.dart';
import 'package:mathjax/pages/equatin_page.dart';
import 'package:mathjax/pages/featured_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Math Demo v0.2.0',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Math Demo v0.2.0',
          ),
          bottom: TabBar(tabs: [
            Text('Interactive Demo'),
            Text('Equation Samples'),
            Text('Supported Features'),
          ]),
        ),
        body: TabBarView(children: [
          DemoPage(),
          EquationsPage(),
          FeaturePage(),
        ]),
      ),
    ),
  );
}

