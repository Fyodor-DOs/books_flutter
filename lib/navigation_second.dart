import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen - Fathir'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromARGB(255, 255, 0, 0);
                  Navigator.pop(context, color);
                },
                child: const Text('Red')),
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromARGB(255, 0, 255, 0);
                  Navigator.pop(context, color);
                },
                child: const Text('Green')),
            ElevatedButton(
                onPressed: () {
                  color = const Color.fromARGB(255, 0, 0, 255);
                  Navigator.pop(context, color);
                },
                child: const Text('Blue')),
          ],
        ),
      ),
    );
  }
}
