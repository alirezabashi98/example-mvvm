import 'package:example_mvvm/di/service_locatior.dart';
import 'package:example_mvvm/view/coinlist_screen.dart';
import 'package:flutter/material.dart';

void main() {
  initServiceLocator();
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinlisScreen(),
    );
  }
}
