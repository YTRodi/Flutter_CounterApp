import 'package:flutter/material.dart';
import 'package:counter_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context: contiene el árbol de widgets
    return const MaterialApp(
      title: 'Counter app',
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
