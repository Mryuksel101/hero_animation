import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithBottomNavBar extends StatefulWidget {
  final Widget child;
  const ScaffoldWithBottomNavBar({super.key,  required this.child});

  @override
  State<ScaffoldWithBottomNavBar> createState() => _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState extends State<ScaffoldWithBottomNavBar> {
  static int _calculateSelectedIndex(String location){
    log("_calculateSelectedIndex fonksiyonu calişti: $location");
    if(location.startsWith("/home")){
      return 0;
    }
    else if(location.startsWith("/ayarlar")){
      return 1;
    }

    else{
      return 0;
    }
  }

  void _onItemTapped(int index){
    log("_onItemTapped fonksiyonu calişti");
    switch(index){
      case 0:
      log("0");
        GoRouter.of(context).go('/home');
        break;
      
      case 1:
      log("1");
      GoRouter.of(context).go('/ayarlar');
    }
  }
  @override
  Widget build(BuildContext context) {
    log("ScaffoldWithBottomNavBar rebuilt edildi");
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(GoRouterState.of(context).location),
        onTap: (value) => _onItemTapped(value),
        items: const [
          BottomNavigationBarItem(
            label: "ev",
            icon: Icon(
              Icons.home
            ),
          ),

          BottomNavigationBarItem(
            label: "telefon",
            icon: Icon(
              Icons.account_circle_rounded
            ),
          ),
        ],
      ),
    );
  }
}