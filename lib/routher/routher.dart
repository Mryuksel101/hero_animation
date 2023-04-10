import 'package:flutter_animasyon/ana_sayfa.dart';
import 'package:flutter_animasyon/detay_sayfasi.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AnaSayfa(),
      name: "home",
      routes: [
        GoRoute(
          path: 'detay-sayfasi',
          builder: (context, state) => const DetaySayfasi(),     
        ),
      ]
    ),
  ],
);