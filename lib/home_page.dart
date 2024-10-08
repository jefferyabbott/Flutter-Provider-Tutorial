import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_example/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Provider Demo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().value.toString(),
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().incrementCounter();
            },
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrementCounter();
            },
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
