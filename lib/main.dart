import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter demo'),
        ),
        body: Mydemo(),
      ),
    );
  }
}

class Mydemo extends StatefulWidget {
  @override
  _MydemoState createState() => _MydemoState();
}

class _MydemoState extends State<Mydemo> {
  String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter key words',
            ),
            onChanged: (String name){
              setState(() {
                userName = name;
              });
            }
          ),
          SizedBox(
                height: 20.0,
          ),
          Text('Hello ' +userName)
        ],
      ),
    );
  }
}
