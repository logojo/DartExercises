import 'package:flutter/material.dart';

class Practicas extends StatefulWidget {
  const Practicas({super.key});

  @override
  State<Practicas> createState() => _CounterState();
}

class _CounterState extends State<Practicas> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Practicas',
              style: TextStyle(fontSize: 40),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                iconSize: 40,
                icon: const Icon(Icons.refresh_rounded)),
          ],
        ),
        body: Center(
            child: Column(
                // esto es como usar flexbox
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterLogo(
                    size: 60,
                  ),
                  Text(
                    'Jugando con rows',
                    style: TextStyle(fontSize: 40),
                  ),
                  Icon(
                    Icons.sentiment_very_satisfied,
                    size: 50,
                  )
                ],
              ),
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 300, fontWeight: FontWeight.w100),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 60),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 500,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Espacio footer',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Espacio footer',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'Espacio footer',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              )
            ])),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(height: 15),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(height: 15),
            CustomButtom(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if (clickCounter == 0) return;
                setState(() {
                  clickCounter--;
                });
              },
            ),
          ],
        ));
  }
}

//Widget personalisado
class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      //shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 10,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 50,
      ),
    );
  }
}
