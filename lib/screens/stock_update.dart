import 'package:flutter/material.dart';

class StockUpdate extends StatelessWidget {
  const StockUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Stock'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}
