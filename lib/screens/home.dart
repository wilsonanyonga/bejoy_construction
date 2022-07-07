// ignore_for_file: unnecessary_const

import 'package:bejoy_construction/blocs/stock_update/stock_update_bloc.dart';
import 'package:bejoy_construction/utils/dio_client.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  final int counter;
  // String jo;
  var mediaQsize, mediaQheight, mediaQwidth;

  final DioClient _client = DioClient();

  String jo;

  // Home({Key? key, this.counter}) : super(key: key);
  Home(this.counter, {Key? key, required this.jo}) : super(key: key);

  // final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    mediaQsize = MediaQuery.of(context).size;
    mediaQheight = mediaQsize.height;
    mediaQwidth = mediaQsize.width;

    // final names = _client.getUser(id: '1');

    // _client.getUser(id: '1');

    return BlocProvider(
      create: (context) => StockUpdateBloc(
        RepositoryProvider.of<DioClient>(context),
      )..add(LoadApiEvent()),
      child: SingleChildScrollView(
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
              'Materials Bought',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<StockUpdateBloc, StockUpdateState>(
                builder: (context, state) {
              if (state is StockUpdateLoadingInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is StockHomePageState) {
                return SizedBox(
                  height: mediaQheight * 0.64,
                  width: mediaQwidth * 0.9,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: state.data.length,
                      itemBuilder: (BuildContext ctx, index) {
                        var tot = 0;
                        for (var i = 0;
                            i < state.data[index].materials.length;
                            i++) {
                          tot += state.data[index].materials[i].amount;
                        }
                        return Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const SizedBox(height: 15),
                              Text(
                                tot.toString(),
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                state.data[index].materialsName,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: (tot <= 10)
                                  ? const Color.fromARGB(255, 238, 60, 60)
                                  : (tot > 10 && tot < 20)
                                      ? Colors.amber
                                      : const Color.fromARGB(255, 94, 221, 100),
                              borderRadius: BorderRadius.circular(15)),
                        );
                      }),
                );
              }

              return const Text('data did not work');
            }),
            const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     for (var i = 0; i < 3; i++)
            //       Container(
            //         width: mediaQwidth * 0.3,
            //         // height: 100,
            //         // color: Colors.red,
            //         padding: const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.red[400],
            //         ),
            //         child: Column(
            //           children: const [
            //             SizedBox(height: 15),
            //             Text(
            //               '1',
            //               style: TextStyle(
            //                 fontSize: 40,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black,
            //               ),
            //             ),
            //             Text(
            //               'Cement',
            //               style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.black,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //   ],
            // ),
            // const SizedBox(height: 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     for (var i = 0; i < 3; i++)
            //       Container(
            //         width: mediaQwidth * 0.3,
            //         // height: ,
            //         padding: const EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.blue[200],
            //         ),
            //         // color: Colors.red,
            //         child: SingleChildScrollView(
            //           child: Column(
            //             children: const [
            //               SizedBox(height: 15),
            //               Text(
            //                 '2500',
            //                 style: TextStyle(
            //                   fontSize: 40,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               Text(
            //                 'Gypsum Boards (1 kg) fgsfgs fd dfsg sdf g',
            //                 style: TextStyle(
            //                   fontSize: 15,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               SizedBox(height: 15),
            //             ],
            //           ),
            //         ),
            //       ),
            //   ],
            // ),
            const Text('data'),
            BlocBuilder<StockUpdateBloc, StockUpdateState>(
                builder: (context, state) {
              if (state is StockUpdateLoadingInitial) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is StockHomePageState) {
                return Column(
                  children: [
                    Text(state.status.toString()),
                    Text(state.data.length.toString()),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                          itemCount: state.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            var tot = 0;
                            for (var i = 0;
                                i < state.data[index].materials.length;
                                i++) {
                              tot += state.data[index].materials[i].amount;
                            }
                            return ListTile(
                              leading: const Icon(Icons.abc_outlined),
                              // ${state.data[index].materials[index].amount}
                              title: Column(
                                children: [
                                  Text(
                                      "list is ${state.data[index].materialsName} sum is ${tot.toString()}"),
                                  // for (var i = 0; i < state.data[index].materials.length; i++)
                                  //   stockAmount += state.data[index].materials[i].amount,
                                  // Text(tot.toString()),
                                  // for (var i = 0;
                                  //     i < state.data[index].materials.length;
                                  //     i++)
                                  //   Text(
                                  //       "${state.data[index].materials[i].amount}")
                                ],
                              ),
                            );
                          }),
                    ),
                    // for (var i = 0; i < state.data.length; i++)
                    //   Text(state.data[i].materialsName)
                    //   for (var j = 0; j < state.data[i].materials.length; j++)

                    // for (var j = 0; j < state.data[i].materials.length; j++) {
                    //   Text(state.data[i].materials[j]);
                    // }
                  ],
                );
              }
              return const Text('data did not work');
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
