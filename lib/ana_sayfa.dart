import 'package:flutter/material.dart';
import 'package:flutter_animasyon/detay_sayfasi.dart';
import 'package:go_router/go_router.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ana sayfa"),
      ),
      body: Column(
        children: [
          Hero(
            tag: "kedi",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVubnklMjBjYXR8ZW58MHx8MHx8&w=1000&q=80",
                width: 190,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: OutlinedButton(
              onPressed: () {
                context.go("/home/detay-sayfasi");
              },
              child: const Text("detay sayfasına git")
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          OutlinedButton(
            onPressed: () {
              context.go("/home/arabalar");
            },
            child: const Text("arabalar sayfasına git")
          ),
        ],
      ),
    );
  }
}