import 'package:finance/main.dart';
import 'package:flutter/material.dart';


// NEED TO BE STATEFUL


class Page2 extends StatelessWidget {
  final int x;
  Page2(this.x);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Earnings \$ \$'
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
                'Congratulations! You lost everything!!'
            ),
            RaisedButton(
                child: Text(
                    'Go Home Loser'
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
            )
          ],
        ),
      ),
    );
  }
}
