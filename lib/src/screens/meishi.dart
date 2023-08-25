import 'package:flutter/material.dart';

String _name = '';
String _from = '';
String _birth = '';
String _depart = '';
String _hobby = '';
String _holi = '';
String _funthing = '';
String _hope = '';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('名刺'),
      ),
    );
  }
}

class MeishiScreen extends StatefulWidget {
  const MeishiScreen({Key? key}) : super(key: key);

  @override
  State<MeishiScreen> createState() => _MeishiScreen();
}

class _MeishiScreen extends State<MeishiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'あなたの名刺です。',
              style: TextStyle(fontSize: 28),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 49, 142, 255)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 5,
                  ),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('名前：$_name', style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('出身：$_from', style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child:
                          Text('生年月日：$_birth', style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child:
                          Text('所属：$_depart', style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('趣味：$_hobby', style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('休日の過ごし方：$_holi',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('最近の楽しみ：$_funthing',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child:
                          Text('将来的な願望：$_hope', style: TextStyle(fontSize: 20)),
                    )
                  ]),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
