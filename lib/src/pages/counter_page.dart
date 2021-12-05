import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  createState() => _CounterPageState();
}

// Estado de esta clase (le agrego "_" porque esta clase no se va a usar fuera de este archivo.)
class _CounterPageState extends State<CounterPage> {
  final _textStyle = const TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título'),
        // [Android] no lo centra por default
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _textStyle),
            Text('$_counter', style: _textStyle),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Cuando esta variable cambia, tengo que redibujar este StatefulWidget con el método "setState"
          // _counter++;
          // setState(() {});

          // IDEM
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
