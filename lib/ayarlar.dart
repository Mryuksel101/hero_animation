import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Ayarlar extends StatefulWidget {
  const Ayarlar({super.key});

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar sayfasi"),
      ),

      body: Center(
        child: CupertinoSlider(
          min: 0,
          max: 100,
          value: 0,

          onChanged: (double v) {
            log(v.toString());
            
            setState(() {
              
            });
          },
        ),
      ),
    );
  }
}