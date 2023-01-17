import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final customerInputController = TextEditingController(); //user
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Enter Item details'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: customerInputController,
              decoration: InputDecoration(labelText: 'Enter Item Details'),
            ),
          ),
          ElevatedButton(onPressed: (() {}), child: Text('Submit Data'))
        ],
      ),
    );
  }
}
