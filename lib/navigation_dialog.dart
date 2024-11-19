import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = const Color.fromARGB(255, 251, 134, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Fathir'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showColorDialog(context);
            },
            child: const Text('Change Color')),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text("VIQ (Very Important Question)"),
            content: const Text("Please choose a color, sir!"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    color = const Color.fromARGB(255, 255, 0, 0);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Red')),
              TextButton(
                  onPressed: () {
                    color = const Color.fromARGB(255, 0, 255, 0);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Green')),
              TextButton(
                  onPressed: () {
                    color = const Color.fromARGB(255, 0, 0, 255);
                    Navigator.pop(context, color);
                  },
                  child: const Text('Blue')),
            ],
          );
        });
    setState(() {});
  }
}
