import 'package:event/cart.dart';
import 'package:event/marche.dart';

import 'catPage.dart';
import 'login.dart';
import 'no.dart';
import 'register.dart';

import 'event.dart';
import 'package:flutter/material.dart';
import 'event/school.dart';

import 'event/storyApp.dart';
import 'home.dart';
import 'pageCursus.dart';
import 'detailCursus.dart';
import 'levelCursus.dart';
import 'sign.dart';
import 'stageCursus.dart';
import 'videoCursus.dart';
import 'eCommerce.dart';

void main() {

runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.black),
        primarySwatch: Colors.blue,
      ),
      //home: PageCursus(),
      //home: Marche(),
      //home: Ecommerce(),
      //home: Chart(),
      //home:SignUpPage(),
      home: LoginPage(),
      routes: {
        'event': (context)=> Event(),
        'ajouter': (context)=> RegisterPsge(),
        'cursus': (context)=> DetailCursus(),
        'level': (context)=> LevelCursus(),
        'cour': (context)=> StageCursus(),
        'video': (context)=> VideoCursus(),
        'marche': (context)=>Marche(),
        'chart': (context)=>Chart(),
        'sign': (context)=>SignUpPage(),
        'categorie': (context)=>Ecommerce(),
        'categorieTwo': (context)=>Ecommerce(),
      },
    );
  }
}

