import 'package:flutter/material.dart';

class AnimatedAlign1 extends StatelessWidget {
  const AnimatedAlign1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimatedAlign1(),
    );
  }
}

class AnimatedAlign2 extends StatefulWidget {
  const AnimatedAlign2({super.key});

  @override
  State<AnimatedAlign2> createState() => _AnimatedAlign2State();
}

class _AnimatedAlign2State extends State<AnimatedAlign2> {
  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomLeft,
      child: Text("merhaba"),
    );
  }
}