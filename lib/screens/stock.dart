import 'package:bejoy_construction/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Stock extends StatelessWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock'),
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
            NewMethodMenuWidget(
                context: context,
                details: 'Materials Use',
                icon: Icons.settings_applications,
                routeMe: '/materials'),
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
      body: Column(
        children: [
          const Text('Stock'),
          TextButton(
              onPressed: () => context.go('/'), child: const Text('data'))
        ],
      ),
    );
  }
}
