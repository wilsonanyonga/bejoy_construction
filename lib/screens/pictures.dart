import 'package:bejoy_construction/widgets/menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:go_router/go_router.dart';
import 'package:timelines/timelines.dart';

class Pictures extends StatelessWidget {
  const Pictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Pictures'),
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
            // NewMethodMenuWidget(
            //     context: context,
            //     details: 'Materials Use',
            //     icon: Icons.settings_applications,
            //     routeMe: '/materials'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // const Center(
            //     child: Text('Current Stock',
            //         style: TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.black,
            //         ))),
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
            ),
            const SizedBox(height: 20),
            TimelineTile(
              nodePosition: 0.2,
              oppositeContents: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('18/4/2022'),
              ),
              contents: Column(
                children: [
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ],
              ),
              node: const TimelineNode(
                indicator: DotIndicator(),
                startConnector: SolidLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            TimelineTile(
              nodePosition: 0.2,
              oppositeContents: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('19/4/2022'),
              ),
              contents: Column(
                children: [
                  Card(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ],
              ),
              node: const TimelineNode(
                indicator: DotIndicator(),
                startConnector: SolidLineConnector(),
                endConnector: SolidLineConnector(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ListView(
            //   shrinkWrap: true,
            //   children: [
            //     for (var i = 0; i < 16; i++)
            //       Container(
            //         decoration: BoxDecoration(
            //           color: const Color.fromARGB(62, 82, 158, 154),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         margin: const EdgeInsets.all(10),
            //         child: const ListTile(
            //           leading: Icon(Icons.ac_unit_rounded),
            //           title: Text('Cement'),
            //           subtitle: Text('# 200'),
            //           // trailing: Icon(Icons.edit),
            //           // tileColor: Color.fromARGB(62, 82, 158, 154),
            //         ),
            //       )
            //   ],
            // ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const ListTile(
                leading: Icon(Icons.ac_unit_rounded),
                title: Text('Item 1'),
                subtitle: Text('Description'),
                trailing: Text('Quantity'),
                tileColor: Colors.grey,
              ),
            ),
            TextButton(
                onPressed: () => context.go('/'), child: const Text('data'))
          ],
        ),
      ),
    );
  }
}
