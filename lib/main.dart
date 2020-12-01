import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Transition')),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            print('test');
            setState(() {
              color = color == Colors.green ? Colors.red : Colors.green;
            });
          },
        ),
        body: Container(
          child: AnimatedContainer(duration: Duration(milliseconds: 250), width: 250.0, height: 250.0, color: color),
        ),
      ),
    );
  }
}
