import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/screens/home.dart';

import '../constants/colors.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => const Home(),
      ));
    });
  }
  @override
  Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          color: tdGrey,
          child: const Center(
            child: Text('TO DO',style: TextStyle(
              fontSize: 38,fontWeight: FontWeight.w700,
              color: tdBlack,
            ),
            ),
          ),
        ),

      );
  }
}