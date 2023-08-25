import 'package:FaciliTalk/src/screens/start.dart';
import 'package:flutter/material.dart';

import 'screens/meishi.dart';
import 'screens/touroku.dart';
import 'screens/meishiire.dart';

class Regist {
  //flag
  bool Registed;
  Regist({required this.Registed});
}

// MyAppのクラス
class MyApp extends StatelessWidget {
  final Regist flag = Regist(Registed: false); //flag

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Start1Screen());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [MeishiScreen(), TourokuScreen(), MeishiireScreen()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.picture_in_picture), label: '名刺'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '登録'),
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: '名刺入れ'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}
