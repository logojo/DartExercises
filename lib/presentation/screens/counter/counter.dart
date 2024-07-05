import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Counter screen',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      body: Center(
          child: Column(
              // esto es como usar flexbox
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 45),
            )
          ])),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          clickCounter++;
          //El setState renderiza el componente cada vez que doy click al boton
          setState(() {});
        },
        child: const Icon(
          Icons.plus_one,
          size: 45,
        ),
      ),
    );
  }
}
