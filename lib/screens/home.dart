// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final counter;

  const Home(int this.counter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          const Text(
            'Project Name: GLUK',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Project Cost: \$1,000,000',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Materials Used',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < 3; i++)
                Container(
                  width: 100,
                  // height: 100,
                  // color: Colors.red,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[400],
                  ),
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
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < 3; i++)
                Container(
                  width: 100,
                  // height: ,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[200],
                  ),
                  // color: Colors.red,
                  child: SingleChildScrollView(
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
                          'Gypsum Boards (1 kg) fgsfgs fd dfsg sdf g',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          const Text('data'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
