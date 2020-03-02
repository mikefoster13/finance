import 'dart:ui';
import 'page1.dart';
import 'package:flutter/material.dart';
import 'page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(
        title: 'Finance',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1000;

  void _increase() {
    setState(() {
      _counter += 2000;
    });
  }

  void _decrease() {
    setState(() {
      _counter -= 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Balance',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                ),
              ),
              Text(
                '\$ $_counter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _decrease();
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3(_counter)),
                  );
                },
                color: Colors.red,
                elevation: 7,
                child: Text('Invest in Apple'),
              ),
              RaisedButton(
                color: Colors.red,
                elevation: 7,
                onPressed: _increase,
                child: Text('Get a Job'),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page1(_counter)),
                        );
                      },
                      child: const Text('All or Nothing!',
                          style: TextStyle(fontSize: 20)),
                      color: Colors.red,
                      textColor: Colors.black,
                      elevation: 7,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
