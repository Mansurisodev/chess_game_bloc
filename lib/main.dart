import 'package:chess_app/bloc/app_blocs.dart';
import 'package:chess_app/screens/game_screen.dart';
import 'package:flutter/material.dart';

void main() {
  createAppBlocs();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chess Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameScreen(),
    );
  }
}
