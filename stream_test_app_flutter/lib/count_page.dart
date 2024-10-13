import 'package:flutter/material.dart';
import 'package:stream_test_app_flutter/main.dart';

class CountPage extends StatefulWidget {
  const CountPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => const CountPage(),
    );
  }

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  var _count = 0;

  @override
  void initState() {
    super.initState();
    client.streamTest.count().listen((count) {
      print('Count: $count');

      setState(() {
        _count = count;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text('Count: $_count'),
          ],
        ),
      )),
    );
  }
}
