import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Arabalar extends StatelessWidget {
  const Arabalar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("arabalar"),
      ),

      body: Column(
        children: [
          Image.network(
            "https://i.pinimg.com/originals/8f/df/ab/8fdfabccb2e9a77aa08e7dcf9ee8d76f.jpg",
            loadingBuilder: (context, child, loadingProgress) {
              if(loadingProgress==null){
                log("buradayiz: $loadingProgress");
                return child;
              }

              else{
                return Center(
                child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null ? 
                      loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                  )
                );
              }
            },

            height: 500,
          ),

          OutlinedButton(
            onPressed: () => context.go("/ayarlar"),
            child: Text("ayarlar tab bar'a git"),
          ),
        ],
      ),
    );
  }
}