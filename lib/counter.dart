import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count:$count'),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              count = count + 1;
            });
          },
          label: Text('증가'),
          icon: Icon(Icons.add),
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              count = count - 1;
            });
          },
          label: Text('감소'),
          icon: Icon(Icons.remove),
        ),
      ],
    );
  }
}
