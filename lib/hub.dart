//input : nama item
// enter next location (teext)

import 'package:flutter/material.dart';

class HubPage extends StatefulWidget {
  const HubPage({super.key});

  @override
  State<HubPage> createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  final itemnameInputController = TextEditingController();
  final locationInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hub Page'),
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
