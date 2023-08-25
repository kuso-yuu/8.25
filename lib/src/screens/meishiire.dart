import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '名刺入れ画面',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MeishiireScreen extends StatelessWidget {
  const MeishiireScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('名刺入れ'),
      ),
      body:
          const Center(child: Text('名刺入れ画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
