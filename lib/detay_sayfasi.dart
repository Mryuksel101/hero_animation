import 'package:flutter/material.dart';

class DetaySayfasi extends StatelessWidget {
  const DetaySayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("ana sayfa"),
      ),

      body: Column(
        children: [
          Hero(
            tag: "kedi",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVubnklMjBjYXR8ZW58MHx8MHx8&w=1000&q=80",
                width: 290,
              ),
            ),
          ),

          Text("Kedim de kedim. Ben kedimi çok seviyorum. Kedimiii caldılar"),
        ],
      ),
    );
  }
}