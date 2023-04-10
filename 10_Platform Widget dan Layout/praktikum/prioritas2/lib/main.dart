import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _themeDart = const CupertinoThemeData.raw(
      Brightness.dark, null, null, null, null, null);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: _themeDart,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("CupertinoApp"),
      ),
      child: Center(
        child: Text(
          "This is Cupertino",
        ),
      ),
    );
  }
}
