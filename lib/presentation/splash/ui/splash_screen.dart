import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Center( child: Text('what is this',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),),
    ));
  }
}
