import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final int x;
  Page3(this.x);


  void decrease() {

  }
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text (
          'Choices'
        ),
      ),
      body: Center (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
       //     Text (
          //    '_x', // Figure out how to display new money variable
      //      ),
            RaisedButton (
              child: Text (
                'Invest in Tesla'
              ) ,
              onPressed: null ,
            ),
            RaisedButton (
              child: Text (
                'Invest in Oil'
              ),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
