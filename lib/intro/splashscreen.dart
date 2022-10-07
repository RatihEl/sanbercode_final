import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanbercode_final/account/LoginPage.dart';
import 'package:sanbercode_final/account/Register.dart';
import '../home/home_screen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    SplashScreenPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Image.asset('assets/img/logo.jpg',
            fit: BoxFit.cover,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.center,)),
      ),
    );
  }

  SplashScreenPage() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return LoginPage();
          }));
    });
  }

}
