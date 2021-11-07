import 'package:flutter/material.dart';
import '/page_one.dart';
import '/page_two.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/page_one',
    routes: {
      '/page_one':(context) => const MyApp(),
      '/page_two':(context) => const NotMyApp(),
    },
  ));
}