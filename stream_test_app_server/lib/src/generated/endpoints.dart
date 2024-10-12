/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/stream_test_endpoint.dart' as _i2;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'streamTest': _i2.StreamTestEndpoint()
        ..initialize(
          server,
          'streamTest',
          null,
        )
    };
    connectors['streamTest'] = _i1.EndpointConnector(
      name: 'streamTest',
      endpoint: endpoints['streamTest']!,
      methodConnectors: {
        'count': _i1.MethodStreamConnector(
          name: 'count',
          params: {},
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['streamTest'] as _i2.StreamTestEndpoint)
                  .count(session),
        )
      },
    );
  }
}
