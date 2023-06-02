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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List datas = [
    {"name": "Learn Flutter"},
    {"name": "Learn ReactJs"},
    {"name": "Learn VueJS"},
    {"name": "Learn Tailwind CSS"},
    {"name": "Learn UI/UX"},
    {"name": "Learn Figma"},
    {"name": "Learn Digital Marketing"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter App'),
          backgroundColor: Color(0xFF6200EE),
        ),

        //ListView
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(
                bottom: 4,
                top: 10,
                right: 15,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(datas[index]["name"].toString()),
                    const Divider(color: Color.fromARGB(255, 88, 87, 87))
                  ],
                ),
              ),
            );
          },
        ),

        //FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          foregroundColor: Colors.black,
          child: const Icon(Icons.add),
          backgroundColor: Color(0xFF03DAC5),
        ),

        //BottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color.fromARGB(255, 223, 222, 222),
          backgroundColor: const Color(0xFF6200EE),
          items: const [
            BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.favorite),
              backgroundColor: Color.fromARGB(255, 252, 251, 251),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Information",
              icon: Icon(Icons.info),
            ),
          ],
        ));
  }
}
