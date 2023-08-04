import 'package:flutter/material.dart';

class Git extends StatefulWidget {
  const Git({super.key});

  @override
  State<Git> createState() => _GitState();
}

class _GitState extends State<Git> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: const Color(0xFF731816),
        centerTitle: true,
        title: const Text(
          "GIT",
          style: TextStyle(color: Color(0xFF00AADE), fontSize: 35),
        ),
      ),
      body: const Text("labber"),
    );
  }
}
