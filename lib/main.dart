import 'package:easy_refresh_flutter/complex_example.dart';
//import 'package:easy_refresh_flutter/simple_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      //home: const SimpleEasyRefresh(),
      //home: const ComplexEasyRefreshExample(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
