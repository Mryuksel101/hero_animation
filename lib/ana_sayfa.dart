import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animasyon/detay_sayfasi.dart';
import 'package:flutter_animasyon/sayac.dart';
import 'package:go_router/go_router.dart';

PageController pageController = PageController();
class AnaSayfa extends StatelessWidget{
  



  @override
  Widget build(BuildContext context) {
    log("AnaSayfa build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("ana sayfa"),
      ),
      body: Column(
        children: [
          
          


        ],
      ),
    );
  }
}


