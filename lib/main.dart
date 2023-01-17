import 'package:flutter/material.dart';

import 'button_screen.dart';
import 'buttonswith_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Buttonscreen(),
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
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Jello World',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              GestureDetector(
                onTap: () {
                  print("Gesture Detector");
                },
                child: Container(
                  height: h * 0.1,
                  width: w * 0.2,
                  color: Colors.red,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  print("Material Button");
                },
                color: Colors.cyanAccent,
                child: const Text("hello"),
              ),
              OutlinedButton(
                  onPressed: () {
                    print("Outline Button");
                  },
                  child: const Text("Hello")),
              ElevatedButton(
                onPressed: () {
                  print("Eleveted Button");
                },
                child: const Text("Hello"),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => const Bitton()));
                  print("InkWell");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 50,
                    width: 100,
                    child: const Center(child: Text("hello")),
                    color: Colors.red.withOpacity(.5),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            _incrementCounter();
            print("Floating Action Button");
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
