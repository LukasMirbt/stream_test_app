import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class StreamTestEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Stream<int> count(Session session) async* {
    var count = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield count;
      count += 1;
    }
  }
}
