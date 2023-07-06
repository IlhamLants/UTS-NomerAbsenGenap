import 'package:flutter/material.dart';

class Nogenap extends StatefulWidget {
  const Nogenap({super.key});
  @override
  State<Nogenap> createState() => _NogenapState();
}
class _NogenapState extends State<Nogenap> {
  int _counter = 1;
  String _text = " ";
  void _incrementCounter() {
    setState(() {
      _counter++;
      _text = "Bilangan Prima : ";
      if (_counter > 45) {
        _counter = 1;
      }
      for (int i = 1; i < _counter; i++) {
        int _bilangan = 0;
        for (int j = 1; j <= i; j++) {
          if (i % j == 0) {
            _bilangan = _bilangan + 1;
          }
        }
        if (_bilangan == 2) {
          _text += '$i, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Center(
          child: Text('Ilham Lantasa Achmadi - 20104410065 - Nomer Absen 8 (genap)',
          style: TextStyle(
                fontSize: 35,
                color: Colors.white
              ),
              ),
        ),
      ),
      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Angka :',style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}