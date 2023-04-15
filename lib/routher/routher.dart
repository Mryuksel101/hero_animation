import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animasyon/ana_sayfa.dart';
import 'package:flutter_animasyon/arabalar.dart';
import 'package:flutter_animasyon/ayarlar.dart';
import 'package:flutter_animasyon/deneme_sayfasi1.dart';
import 'package:flutter_animasyon/detay_sayfasi.dart';
import 'package:flutter_animasyon/scaffold_with_bottom_navBar/scaffold_withBottom_navbar.dart';
import 'package:go_router/go_router.dart';

// private navigators
final GlobalKey<NavigatorState> _sectionANavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'sectionANav');
final GlobalKey<NavigatorState> _sectionBNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'sectionBNav');

final GoRouter router = GoRouter(
  initialLocation: "/home",
  
  routes: [
    ShellRoute(
      
      //navigatorKey: _rootNavigatorKey,
      builder: (context, state, child) {
        log("shell router builder");
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(

          path: '/home',
          pageBuilder: (context, state) => const NoTransitionPage(child: AnaSayfa()),
          name: "home",
          routes: [
            

            GoRoute(
              path: 'arabalar',
              builder: (context, state) => const Arabalar(),    
              routes: [
                GoRoute(
                  path: 'deneme',
                  builder: (context, state){
                    log("deneme sayfasi builder");
                    return const DenemeSayfasi1();
                  }  
                ),
              ] 
            ),    
          ]
        ),

        GoRoute(
          path: "/ayarlar",
          pageBuilder: (context, state){
            log("ayarlar builder");
            return const NoTransitionPage(child: Ayarlar());
          }
        ),
      ]
    ),

    GoRoute(
      path: '/home/detay-sayfasi',
      builder: (context, state){
        log("detay sayfasi builder");
        return const DetaySayfasi();
      }  
    ),
  ],
);