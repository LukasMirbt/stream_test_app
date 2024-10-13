import 'package:flutter/material.dart';
import 'package:stream_test_app_flutter/count_page.dart';
import 'package:stream_test_app_flutter/sign_in_page.dart';

class App extends StatelessWidget {
  const App({
    required bool isSignedIn,
    super.key,
  }) : _isSignedIn = isSignedIn;

  final bool _isSignedIn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isSignedIn ? CountPage() : SignInPage(),
    );
  }
}
