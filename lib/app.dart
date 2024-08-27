import 'package:firebase_app/ui/screen/match_list_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MatchListScreen(),
    );
  }
}
