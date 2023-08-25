import 'package:flutter/material.dart';
import '/src/app.dart';
import 'meishi.dart';

String _name = '';
String _from = '';
String _birth = '';
String _depart = '';
String _hobby = '';
String _holi = '';
String _funthing = '';
String _hope = '';

//スクリーン１------------------------------------------------------------------------------------------------------------
class Start1Screen extends StatefulWidget {
  const Start1Screen({Key? key}) : super(key: key);
  @override
  State<Start1Screen> createState() => _Start1Screen();
}

class _Start1Screen extends State<Start1Screen> {
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
        onTap: focusNode.requestFocus,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 150,
              ),
              Center(
                child: Text(
                  "ようこそ。",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 400,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 49, 142, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "あなたの名前を教えてください。",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: TextEditingController(text: _name),
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {
                            _name = text;
                          },
                          maxLines: 1,
                          maxLength: 50,
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            icon: Icon(Icons.perm_identity,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください。',
                          ),
                        ),
                      ),
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              print('名前：$_name');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Start2Screen()),
                              );
                            },
                            child: _name.isEmpty ? Text('次へ') : Text('次へ')),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//スクリーン２------------------------------------------------------------------------------------------------------------
class Start2Screen extends StatefulWidget {
  const Start2Screen({Key? key}) : super(key: key);

  @override
  State<Start2Screen> createState() => _Start2Screen();
}

class _Start2Screen extends State<Start2Screen> {
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: GestureDetector(
        onTap: focusNode.requestFocus,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  width: 400,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 49, 142, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "もっとあなたのことを教えてください。",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _from),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _from = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.home,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '出身',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _birth),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _birth = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.calendar_month,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '生年月日',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _depart),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _depart = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.perm_identity,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '所属',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _hobby),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _hobby = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.favorite,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '趣味',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _holi),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _holi = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.event,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '休日の過ごし方',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _funthing),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _funthing = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.hotel_class_sharp,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '最近の楽しみ',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: TextFormField(
                        controller: TextEditingController(text: _hope),
                        textInputAction: TextInputAction.next,
                        onChanged: (text) {
                          _hope = text;
                        },
                        maxLines: 1,
                        maxLength: 50,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            icon: Icon(Icons.tour_rounded,
                                color: Color.fromARGB(255, 49, 142, 255)),
                            hintText: 'ここに入力してください',
                            labelText: '将来的な願望',
                            labelStyle: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Start1Screen()),
                              );
                            },
                            child: Text('戻る')),
                      ),
                      SizedBox(width: 5),
                      SizedBox(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Start3Screen()),
                              );
                            },
                            child: _hope.isEmpty ? Text('次へ') : Text('次へ')),
                      )
                    ])
                  ]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

//スクリーン３------------------------------------------------------------------------------------------------------------
class Start3Screen extends StatefulWidget {
  const Start3Screen({Key? key}) : super(key: key);

  @override
  State<Start3Screen> createState() => _Start3Screen();
}

class _Start3Screen extends State<Start3Screen> {
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
                  Center(
                    child: Text(
                      "名刺が完成しました。",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "内容は後から変更できます。",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
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
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Start2Screen()),
                            );
                          },
                          child: Text('戻る')),
                    ),
                    SizedBox(width: 5),
                    SizedBox(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MeishiScreen(),
                              ),
                            );
                          },
                          child: Text('次へ')),
                    )
                  ])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
