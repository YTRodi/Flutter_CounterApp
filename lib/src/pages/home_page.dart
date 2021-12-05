import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        // [Android] no lo centra por default
        centerTitle: true,

        // En ambos dispositivos
        elevation: 10,
        shadowColor: Colors.amber,
      ),
      body: const Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}
