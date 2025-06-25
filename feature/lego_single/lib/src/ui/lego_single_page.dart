import 'package:flutter/material.dart';

class LegoSinglePage extends StatelessWidget {
  final String title;

  const LegoSinglePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lego Item')),
      body: Center(child: Text(title)),
    );
  }
}
