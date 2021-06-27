import 'package:flutter/material.dart';
import 'package:instagram/animation/animation_page.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static final id = 'signin_page';
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation;

  TextEditingController _emain = TextEditingController();
  TextEditingController _password = TextEditingController();

  _doSignIn(){
    if (_emain.text.isNotEmpty && _password.text.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this,
      duration: Duration(milliseconds: 300)
    );
    _animation = Tween<double>(begin: 1.0, end: 30.0).animate(_controller)
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed){
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (1, Text('Instagram', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),),),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]
              ),
              child: TextField(
                controller: _emain,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]
              ),
              child: TextField(
                controller: _password,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              width: double.infinity,
              height: 48,
              child: MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                onPressed: (){
                  _doSignIn();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Log In', style: TextStyle(fontSize: 16),),
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Don`t have an account?', style: TextStyle(color: Colors.grey)),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                      child: Text('Sign Up', style: TextStyle(color: Colors.black),)),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}