import 'dart:developer';

import 'package:flutter/material.dart';

class AnimatedAlign1 extends StatelessWidget {
  const AnimatedAlign1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimatedAlign2(),
    );
  }
}

class AnimatedAlign2 extends StatefulWidget {
  const AnimatedAlign2({super.key});

  @override
  State<AnimatedAlign2> createState() => _AnimatedAlign2State();
}

class _AnimatedAlign2State extends State<AnimatedAlign2> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    log("build");
    return InkWell(
      onTap: () {
        isTapped = true;
        setState(() {
          
        });
      },
      child: AnimatedAlign(
        duration: Duration(
          seconds: 3,
        ),
    
        alignment: isTapped? Alignment.bottomLeft : Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          
          child: Text(
            "merhaba",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}