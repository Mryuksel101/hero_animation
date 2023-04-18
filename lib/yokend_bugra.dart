import 'dart:developer';


import 'package:flutter/material.dart';


class AnaSayfa extends StatelessWidget{
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    log("AnaSayfa build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("ana sayfa"),
      ),
      body: const Center(
        child: YokendBugra(),
      )
    );
  }
}

class YokendBugra extends StatefulWidget {
  const YokendBugra({
    super.key,
  });

  @override
  State<YokendBugra> createState() => _YokendBugraState();
}

class _YokendBugraState extends State<YokendBugra> with SingleTickerProviderStateMixin{
  late final AnimationController animationController;
  double verticalPadding = 40;
  double horizontalPadding = 10;
  double fontSize = 14;
  double radius = 60;
  @override
  void initState() {
    log("init");
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      lowerBound: 0,
      upperBound: 1,
      duration: const Duration(
        seconds: 3,
      ),
      vsync: this,
    );

    animationController.forward();

    animationController.addListener(
      () {
        verticalPadding = verticalPadding + animationController.value;
        horizontalPadding = verticalPadding +  animationController.value;
        if(fontSize<174){
          fontSize = fontSize + animationController.value;
        }
        
        log(fontSize.toString());
        radius = radius + animationController.value;
        setState(() {
          
        });
        log(animationController.value.toString());
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    log("built edildi");
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding
      ),
      child: Text(
        "yokend Buğra",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: fontSize,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.amber,
      ),
      
    );
  }
}


