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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < 3; i++)
              Container(
                width: 100,
                height: 100,
                // color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 15),
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Cement',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < 3; i++)
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                // color: Colors.red,
                child: Center(
                  child: Column(
                    children: const [
                      SizedBox(height: 15),
                      Text(
                        '2500',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Gypsum Boards  (1kg)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
