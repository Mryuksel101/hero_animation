import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animasyon/detay_sayfasi.dart';
import 'package:flutter_animasyon/sayac.dart';
import 'package:go_router/go_router.dart';

PageController pageController = PageController();
class AnaSayfa extends StatelessWidget{
  final gs = GlobalKey();



  @override
  Widget build(BuildContext context) {
    log("AnaSayfa build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("ana sayfa"),
      ),
      body: Column(
        children: [
          
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              )
            ),
            width: 200,
            height: 100,
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                switch(index){
                  case 0:
                  return Container(
                    color: Colors.green[100],
                    child: Sayac(gs,)
                  );
                  break;
                  case 1:
                  return BosSayfa();
                  break;
                  case 2:
                  return Container(
                    color: Colors.red[100],
                    child: Sayac(gs,)
                  );
                  break;
                }
              }
            ),
          ),


        ],
      ),
    );
  }
}


