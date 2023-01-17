//input 2 : item(Text) & receiver destination (text)

import 'package:flutter/material.dart';

class SenderPage extends StatefulWidget {
  const SenderPage({super.key});

  @override
  State<SenderPage> createState() => _SenderPageState();
}

class _SenderPageState extends State<SenderPage> {
  final itemnameInputController = TextEditingController();
  final destinationInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sender Page'),
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
              controller: destinationInputController,
              decoration: InputDecoration(labelText: 'Enter destination'),
            ),
          ),
          ElevatedButton(onPressed: (() {}), child: Text('Submit Data'))
        ],
      ),
    );
  }
}
