import 'package:flutter/material.dart';
import 'package:planets_animation_app/screens/home_page.dart';
import 'package:planets_animation_app/screens/planets_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        'planets' : (context) => const Planets(),
      },
    ),
  );
}
