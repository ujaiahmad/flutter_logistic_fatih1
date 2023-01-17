import 'package:flutter/material.dart';
////input : nama item
// enter next location (teext)

class CourierPage extends StatefulWidget {
  const CourierPage({super.key});

  @override
  State<CourierPage> createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
  final itemnameInputController = TextEditingController();
  final locationInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courier Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Enter Item details'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: itemnameInputController,
              decoration: InputDecoration(labelText: 'Enter Item Details'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: locationInputController,
              decoration: InputDecoration(labelText: 'Enter location'),
            ),
          ),
          ElevatedButton(onPressed: (() {}), child: Text('Submit Data'))
        ],
      ),
    );
  }
}
