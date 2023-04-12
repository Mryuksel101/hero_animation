import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DenemeSayfasi1 extends StatelessWidget {
  const DenemeSayfasi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("deneme sayfasi 1"),
      ),

      body: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
        child: OutlinedButton(
          onPressed: () => context.go("/"),
          child: Text("eve dön")
        ),
      ),
    );
  }
}