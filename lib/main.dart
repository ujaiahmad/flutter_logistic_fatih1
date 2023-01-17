import 'package:flutter/material.dart';
import 'package:flutter_logistic_fatih/courier.dart';
import 'package:flutter_logistic_fatih/customer.dart';
import 'package:flutter_logistic_fatih/sender.dart';

import 'hub.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final inputController = TextEditingController(); //user input
  final userController = TextEditingController();
  int _counter = 0;
  // dynamic list = ['test'];
  List<String> listUser = <String>[
    'Customer',
    'Courier',
    'Hub',
    'Sender',
  ];

  @override
  void initState() {
    userController.text = listUser[0];
    somefunction();
    // TODO: implement initState
    super.initState();
  }

  somefunction() {
    print('test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Supply Chain Management'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    )),
                child: DropdownButton<String>(
                  underline: Container(
                    height: 0,
                  ),
                  iconEnabledColor: Theme.of(context).primaryColor,
                  value: userController.text,
                  items: listUser.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                        value: e,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            e,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      userController.text = value.toString();
                      if (userController.text == 'Courier') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CourierPage(),
                        ));
                      } else if (userController.text == 'Customer') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CustomerPage(),
                        ));
                      } else if (userController.text == 'Hub') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HubPage(),
                        ));
                      } else if (userController.text == 'Sender') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SenderPage(),
                        ));
                      }
                      //print(_genderController.text);
                    });
                  },
                ),
              ),
            ),
            // CustomerPage(),
            // TextFormField(
            //   controller: inputController,
            // ),
            // Text(inputController.text),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).push(MaterialPageRoute(
            //         builder: (context) => Courier(),
            //       ));
            //     },
            //     child: Text('Elevated button')),
            // TextButton(onPressed: (() {}), child: Text('Elevated button'))
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) => Courier(),
      //     ));
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
