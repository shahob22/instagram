import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram',style: TextStyle(fontFamily: 'Billabong',fontSize: 40)),
      ),
      body: Center(
        child: Text('Welcome to Instagram', style: TextStyle(fontSize: 24),)
      ),
    );
  }
}
