import 'package:flutter/material.dart';

class CounterFuntions extends StatefulWidget {
  const CounterFuntions({super.key});

  @override
  State<CounterFuntions> createState() => _CounterState();
}

class _CounterState extends State<CounterFuntions> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Counter Functions',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 300, fontWeight: FontWeight.w100),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 60),
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
