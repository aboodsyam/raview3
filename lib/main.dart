import 'package:flutter/material.dart';
import 'package:raview3/Poas/app/categories.dart';
import 'package:raview3/Poas/app/users_scereen.dart';
import 'package:raview3/Poas/lancer1.dart';
import 'package:raview3/Poas/lancer2.dart';
import 'package:raview3/Poas/logenScarrn.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Lancer1',
      routes: {
        '/Lancer1' : (context) => const Lancer1(),
        '/Lancer2' : (context) => const Lancer2(),
        '/LogenScaeern3' : (context) => const LogenScaeern(),
        '/UsersScreen' : (context) => const UsersScreen(),
        '/CategoriesScreen' : (context) => const CategoriesScreen(

        ),
      },
    );
  }
}
