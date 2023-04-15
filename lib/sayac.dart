import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animasyon/ana_sayfa.dart';

class Sayac extends StatefulWidget {
  const Sayac(key) : super(key: key);

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  double value = 10;
  @override
  Widget build(BuildContext context) {
    log("sayac build edildi");
    return CupertinoSlider(
      
      min: 0,
      max: 100,
      value: value,
      onChanged: (double v) {
        log(v.toString());
        value = v;
        setState(() {
          
        });
      },
    );
  }
}



class BosSayfa extends StatelessWidget {
  const BosSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.black,
    );
  }
}