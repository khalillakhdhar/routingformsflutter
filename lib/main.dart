import 'package:flutter/material.dart';
import 'package:routingforms/pages/carListPage.dart';
import 'package:routingforms/pages/details.dart';
import 'package:routingforms/pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/details': (context) => Details(),
        '/carList': (context) => CarListPage(),
      },
    ),
  );
}
