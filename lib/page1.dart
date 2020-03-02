import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatefulWidget {
  final int x;
  Page1(this.x);
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text (
          'Earnings \$ \$',
        ),
      ),
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          // put in container to get text away from side of screen
          children: <Widget>[
            Container (
              padding: EdgeInsets.all(50),
              child: Text (
                  'You risked everything... Click below to find out what you made or lost...\n${widget.x}'
              ),
            ),
            RaisedButton (
              child: Icon (
                Icons.pregnant_woman,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2(widget.x)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
