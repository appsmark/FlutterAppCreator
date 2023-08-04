import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          "APP NAME",
          style: TextStyle(color: Color(0xFF00AADE), fontSize: 35),
        ),
      ),
      body: const Text("beeboplabber"),
    );
  }
}
