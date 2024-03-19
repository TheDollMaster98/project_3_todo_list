import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Center(child: Text("ToDo List")),
        ),
        body: Center(child: body()));
  }
}

Widget body() => Text(
      "Empty.",
      style: TextStyle(fontSize: 32),
    );
