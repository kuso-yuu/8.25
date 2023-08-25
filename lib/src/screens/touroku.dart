import 'package:flutter/material.dart';

class TourokuScreen extends StatelessWidget {
  const TourokuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('登録'),
      ),
      body: const Center(child: Text('登録画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
