import 'package:flutter/material.dart';
import 'package:instagram/animation/animation_page.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  static final id = 'signin_page';
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with TickerProviderStateMixin{

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  _doSignIn(){
    if (_email.text.isNotEmpty && _password.text.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeAnimation(1, Text('Instagram', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),),),
          FadeAnimation(1.2, Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]
            ),
            child: TextField(
              controller: _email,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
          )),
          FadeAnimation(1.3, Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]
            ),
            child: TextField(
              obscureText: true,
              controller: _password,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
          )),
          FadeAnimation(1.5, Container(
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
          )),
          FadeAnimation(1.5, Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Don`t have an account?', style: TextStyle(color: Colors.grey)),
                TextButton(onPressed: () {
                  Navigator.pushReplacementNamed(context, SignUpPage.id);
                },
                    child: Text('Sign up', style: TextStyle(color: Colors.black),)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}