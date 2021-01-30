import 'package:flutter/material.dart';
import 'package:teste_flutter/screens/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Presença',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        cursorColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Colors.deepOrangeAccent,
      ),
      home: ListScreen(),
    );
  }
}
