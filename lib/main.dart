import 'package:bejoy_construction/blocs/count_me/count_me_bloc.dart';
import 'package:bejoy_construction/models/counter.dart';
import 'package:bejoy_construction/screens/daily_register.dart';
import 'package:bejoy_construction/screens/home.dart';
import 'package:bejoy_construction/screens/material_use.dart';
import 'package:bejoy_construction/screens/pictures.dart';
import 'package:bejoy_construction/screens/receipts.dart';
import 'package:bejoy_construction/screens/staff.dart';
import 'package:bejoy_construction/screens/stock.dart';
import 'package:bejoy_construction/screens/tools.dart';
import 'package:bejoy_construction/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  /// The title of the app.
  static const String title = 'Bejoy Construction';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<CountMeBloc>(
            create: (context) => CountMeBloc()..add(LoadCounter()),
          ),
        ],
        child: MaterialApp.router(
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          title: 'GoRouter Example',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.green,
          ),
        ),
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) => MyHomePage(),
          routes: [
            GoRoute(
              path: 'home',
              builder: (BuildContext context, GoRouterState state) =>
                  MyHomePage(),
            ),
            GoRoute(
              path: 'stock',
              builder: (BuildContext context, GoRouterState state) => Stock(),
            ),
            GoRoute(
              path: 'staff',
              builder: (BuildContext context, GoRouterState state) => Staff(),
            ),
            GoRoute(
              path: 'receipts',
              builder: (BuildContext context, GoRouterState state) =>
                  const Receipt(),
            ),
            GoRoute(
              path: 'daily_register',
              builder: (BuildContext context, GoRouterState state) =>
                  const RegisterDaily(),
            ),
            GoRoute(
              path: 'tools',
              builder: (BuildContext context, GoRouterState state) =>
                  const Tools(),
            ),
            GoRoute(
              path: 'pictures',
              builder: (BuildContext context, GoRouterState state) =>
                  const Pictures(),
            ),
            GoRoute(
              path: 'materials',
              builder: (BuildContext context, GoRouterState state) =>
                  const MaterialUse(),
            ),
          ]),
    ],
    // initialLocation: '/home',
  );

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Bejoy Construction',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       // This is the theme of your application.
  //       //
  //       // Try running your application with "flutter run". You'll see the
  //       // application has a blue toolbar. Then, without quitting the app, try
  //       // changing the primarySwatch below to Colors.green and then invoke
  //       // "hot reload" (press "r" in the console where you ran "flutter run",
  //       // or simply save your changes to "hot reload" in a Flutter IDE).
  //       // Notice that the counter didn't reset back to zero; the application
  //       // is not restarted.
  //       primarySwatch: Colors.green,
  //     ),
  //     home: const MyHomePage(title: 'Bejoy Construction'),
  //   );
  // }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final _coun2 = CountMeBloc();

  var mediaQsize, mediaQheight, mediaQwidth;

  MyHomePage({Key? key}) : super(key: key);
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    mediaQsize = MediaQuery.of(context).size;
    mediaQheight = mediaQsize.height;
    mediaQwidth = mediaQsize.width;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Center(child: Text(MyApp.title)),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        // backgroundColor: Colors.blue[100],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
                // color: Colors.blue,
              ),
              child: Text(''),
              // child: Stack(
              //   children: const [
              //     Text('some 1'),
              //     Align(
              //       alignment: Alignment.bottomCenter,
              //       child: Text('Bejoy Admin',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.bold)),
              //     ),
              //   ],
              // ),
            ),
            Container(
                alignment: Alignment.center,
                child: const Text('Bejoy Admin',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            NewMethodMenuWidget(
                context: context,
                details: 'Home',
                icon: Icons.home,
                routeMe: '/'),
            NewMethodMenuWidget(
                context: context,
                details: 'Stock',
                icon: Icons.storage_rounded,
                routeMe: '/stock'),
            NewMethodMenuWidget(
                context: context,
                details: 'Staff',
                icon: Icons.people,
                routeMe: '/staff'),
            NewMethodMenuWidget(
                context: context,
                details: 'Receipts',
                icon: Icons.receipt_long_outlined,
                routeMe: '/receipts'),
            NewMethodMenuWidget(
                context: context,
                details: 'Daily Register',
                icon: Icons.app_registration,
                routeMe: '/daily_register'),
            NewMethodMenuWidget(
                context: context,
                details: 'Tools',
                icon: Icons.settings_applications,
                routeMe: '/tools'),
            NewMethodMenuWidget(
                context: context,
                details: 'Progress Pictures',
                icon: Icons.picture_in_picture_alt,
                routeMe: '/pictures'),
            // const Spacer(),
          ],
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Bejoy Projects'),
            ),
            NewMethodMenuWidget(
                context: context,
                details: 'GLUK',
                icon: Icons.home,
                routeMe: '/stock'),
            NewMethodMenuWidget(
                context: context,
                details: 'Oloitoktok',
                icon: Icons.home,
                routeMe: '/stock'),
            NewMethodMenuWidget(
                context: context,
                details: 'Add Project',
                icon: Icons.add_circle,
                routeMe: '/stock'),
          ],
        ),
      ),
      // body: Home(_counter),
      body: BlocBuilder<CountMeBloc, CountMeState>(
        builder: (context, state) {
          // return Home(state.count[]);
          if (state is CountMeInitial) {
            return const CircularProgressIndicator(color: Colors.orange);
          }
          if (state is CountMeLoaded) {
            return Text('data ${state.countState[0].count}');
            // return Home(state.countState[0].count);
          } else {
            return const Text('error');
          }
        },
      ),
      floatingActionButton: BlocListener<CountMeBloc, CountMeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: FloatingActionButton(
          onPressed: () {
            var numIncrement = CountLol(count: 1);
            context
                .read<CountMeBloc>()
                .add(AddCounter(countEvent: numIncrement));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
