import 'package:easy_refresh/easy_refresh.dart';
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
      home: const SimpleEasyRefresh(),
    );
  }
}

class SimpleEasyRefresh extends StatefulWidget {
  const SimpleEasyRefresh({super.key});

  @override
  State<SimpleEasyRefresh> createState() => _SimpleEasyRefreshState();
}

class _SimpleEasyRefreshState extends State<SimpleEasyRefresh> {
  List<int> _items = List.generate(20, (index) => index);
  int _nextItem = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EasyRefresh Example'),
      ),
      body: EasyRefresh(
        onRefresh: () async {
          // Simulate network request
          await Future.delayed(const Duration(seconds: 2));
          setState(() {
            _items = List.generate(20, (index) => index);
            _nextItem = 20;
          });
        },
        onLoad: () async {
          // Simulate network request
          await Future.delayed(const Duration(seconds: 2));
          setState(() {
            _items.addAll(List.generate(10, (index) => _nextItem++));
          });
        },
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item ${_items[index]}'),
            );
          },
        ),
      ),
    );
  }
}
