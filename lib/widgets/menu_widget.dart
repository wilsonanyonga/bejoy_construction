import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewMethodMenuWidget extends StatelessWidget {
  const NewMethodMenuWidget({
    Key? key,
    required this.context,
    required this.details,
    required this.icon,
    required this.routeMe,
  }) : super(key: key);

  final BuildContext context;
  final String details;
  final IconData icon;
  final String routeMe;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        details,
        style: const TextStyle(
          fontSize: 20,
          // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      onTap: () {
        // Update the state of the app.
        // ...
        // Navigator.pop(context);
        context.go(routeMe);
      },
    );
  }
}
