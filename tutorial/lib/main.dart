import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_app/drawer.dart';
import 'package:test_app/name_card_widget.dart';

import 'pages/home_page.dart';

void main() {
  // WidgetsApp
  // MaterialApp
  // CupertinoApp
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}