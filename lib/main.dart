import 'package:flutter/material.dart';
import 'package:magic_ball/ball.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Ball',
      home: BallPage(title: 'Ask Me Anything'),
    );
  }
}

class BallPage extends StatefulWidget {
  BallPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: Image.asset('images/ball1.png'),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Ball(),
    );
  }
}
