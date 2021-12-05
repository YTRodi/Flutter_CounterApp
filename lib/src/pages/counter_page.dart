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
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        const SizedBox(width: 30.0),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        const Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: _remove,
        ),
        const SizedBox(width: 5.0),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _add,
        ),
        const SizedBox(width: 5.0),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() => _counter--);
  }

  void _reset() {
    setState(() => _counter = 0);
  }
}
