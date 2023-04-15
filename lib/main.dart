import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animasyon/routher/routher.dart';

import 'ana_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    log("MaterialApp.router");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: AnaSayfa(),
    );
  }
}
