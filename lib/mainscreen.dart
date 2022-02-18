import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double blur = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              blur = 15;
            });
          },
          onExit: (event) {
            setState(() {
              blur = 5;
            });
          },
          child: Container(
            height: 70,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.orange,
                  offset: const Offset(2, 2),
                  blurRadius: blur,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "BUTTON",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
