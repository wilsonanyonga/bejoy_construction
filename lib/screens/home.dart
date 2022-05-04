// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  var counter;

  Home(int this.counter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
                // borderSide: const BorderSide(
                //   color: Colors.green,
                //   width: 1.0,
                // ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.blue,
                  width: 1.0,
                ),
              ),
              filled: true,
              fillColor: Colors.blue.shade100,
              // input border should appear when data is being modified
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10.0),
              // ),
              labelText: 'Search',
              prefixIcon: const Icon(Icons.search),
            ),
          ),

          // child: TextField(
          //   decoration: InputDecoration(
          //     labelText: 'Gender',
          //     fillColor: Colors.blue.shade100,
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //   ),
          // ),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            filled: true,
          ),
        ),
        const SizedBox(height: 20),
        Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$counter',
                // 'something',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
