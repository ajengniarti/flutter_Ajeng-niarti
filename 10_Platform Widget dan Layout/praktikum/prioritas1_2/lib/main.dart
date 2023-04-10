import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  List datas = [
    {"username": "PurplePenguin22", "phone": "(555) 123-4567"},
    {"username": "GreenGiraffe99", "phone": "(555) 234-5678"},
    {"username": "SilverSunshine11", "phone": "(555) 345-6789"},
    {"username": "BlueButterfly44", "phone": "(555) 456-7890"},
    {"username": "GoldenDragonfly77", "phone": "(555) 567-8901"},
    {"username": "RedRainbow66", "phone": "(555) 678-9012"},
    {"username": "OrangeMeadow55", "phone": "(555) 789-0123"},
    {"username": "YellowNightfall33", "phone": "(555) 890-1234"},
    {"username": "BlackStarlight88", "phone": "(555) 901-2345"},
    {"username": "PinkMoonstone77", "phone": "(555) 012-3456"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('JSON ListView in Flutter'),
        ),
        //
        //
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        )),
        //
        //
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                bottom: 8,
                top: 20,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                    child: Text(
                      datas[index]["username"].toString()[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(datas[index]["username"]),
                        Text(datas[index]["phone"])
                      ],
                    ),
                  ),
                  //
                ],
              ),
            );
          },
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: _incrementCounter,
        //   tooltip: 'Increment',
        //   child: const Icon(Icons.add),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Setting",
              icon: Icon(Icons.settings),
            )
          ],
        ));
  }
}
