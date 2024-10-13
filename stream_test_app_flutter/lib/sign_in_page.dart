import 'package:flutter/material.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:stream_test_app_flutter/count_page.dart';
import 'package:stream_test_app_flutter/main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (BuildContext context) => const SignInPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: _SignInButton(),
        ),
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return SignInWithEmailButton(
      caller: client.modules.auth,
      onSignedIn: () {
        Navigator.of(context).pushReplacement(
          CountPage.route(),
        );
      },
    );
  }
}
