import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;

    print("_____________________________$_counter");
  }

  @override
  Widget build(BuildContext context) {
    var wsize = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.amber,
      height: 100,
      width: 100,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 400,
              width: wsize / 1.5,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Hiiiiiiiii",
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 400,
              width: 400,
            ),
            Container(
              color: Colors.blue,
              height: 400,
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}
