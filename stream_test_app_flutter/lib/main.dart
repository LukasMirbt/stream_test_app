import 'package:flutter/material.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:stream_test_app_client/stream_test_app_client.dart';
import 'package:stream_test_app_flutter/app.dart';

late SessionManager sessionManager;
late Client client;

void main() async {
  client = Client(
    'http://$localhost:8080/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();

  runApp(
    App(
      isSignedIn: sessionManager.isSignedIn,
    ),
  );
}
