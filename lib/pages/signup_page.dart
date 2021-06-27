import 'package:flutter/material.dart';
import 'package:instagram/pages/home_page.dart';
import 'package:instagram/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  static final id = 'signup_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  _doSignUp(){
    if (_name.text.isNotEmpty && _email.text.isNotEmpty && _password.text.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Instagram', style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),),

            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200]
              ),
              child: TextField(
                controller: _name,
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: 'Name',
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
                controller: _email,
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
                  _doSignUp();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Sign Up', style: TextStyle(fontSize: 16),),
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Already have an account?', style: TextStyle(color: Colors.grey)),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, SignInPage.id);
                      },
                      child: Text('Log In', style: TextStyle(color: Colors.black),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
