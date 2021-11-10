import 'package:flutter/material.dart';
import 'package:flutter_projects/page/setup.dart';
import 'package:flutter_projects/page/test1.dart';
import 'package:flutter_projects/page/test2.dart';
import 'package:flutter_projects/page/home.dart';
import 'package:flutter_projects/page/loading.dart';
import 'package:flutter_projects/page/final1.dart';
import 'package:flutter_projects/page/final2.dart';
import '/page_one.dart';
import '/page_two.dart';
void main() =>runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/test1': (context) => Testone(),
    '/test2': (context) => Testtwo(),
    '/setup': (context) => Setup(),
    '/final1': (context) => Finalone(),
    '/final2': (context) => Finaltwo(),
    '/page_one':(context) => const MyApp(),
    '/page_two':(context) => const NotMyApp(),

  },
));
