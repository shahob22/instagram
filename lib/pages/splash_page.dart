import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static final id = 'splash_page';
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        Navigator.pushReplacementNamed(context, SignInPage.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
                child: Image.asset('assets/images/instagram.png',height: 80,width: 80,)
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('from Facebook', style: TextStyle(fontSize: 17),),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
