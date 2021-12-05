import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = const TextStyle(fontSize: 25);

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        // [Android] no lo centra por default
        centerTitle: true,

        // En ambos dispositivos
        // elevation: 10,
        // shadowColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: textStyle),
            Text('0', style: textStyle),
          ],
        ),
      ),
    );
  }
}
