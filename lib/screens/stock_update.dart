import 'package:flutter/material.dart';

class StockUpdate extends StatelessWidget {
  // var id;
  const StockUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var id;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Stock'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              // Padding(padding: EdgeInsets.all(20),
              // child: Column(

              // ),),
              SizedBox(height: 20),
              Text(
                'Cement',
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Bags: 20',
                // textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              ListTile(
                leading: Icon(Icons.storage_rounded),
                title: Text('50 Bags'),
                subtitle: Text('26/5/2022'),
                trailing: Text('Ksh 48,000'),
                // onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storage_rounded),
                title: Text('-5 Bags'),
                subtitle: Text('26/5/2022'),
                // trailing: Text('Ksh 48,000'),
                // onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storage_rounded),
                title: Text('-10 Bags'),
                subtitle: Text('26/5/2022'),
                // trailing: Text('Ksh 48,000'),
                // onTap: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // id = '1';
              // Navigator.pushNamed(context, '/stock_update_form');
            },
            tooltip: 'Add Stock',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // id = '1';
              // Navigator.pushNamed(context, '/stock_update_form');
            },
            tooltip: 'Reduce Stock',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
