import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Dashboard_Panel.dart';
import 'PowerButton.dart';

void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context) => const HomeScreen(),
      '/Dashboard':(context) => const Dashboard(),
      '/powerButton':(context) => const PowerButton()
    } ,
  ));
}

