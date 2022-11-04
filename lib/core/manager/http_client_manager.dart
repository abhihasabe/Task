/* (c) Walt Disney. All rights reserved. */

import 'package:assignment/core/constants/app_network_constants.dart';
import 'package:assignment/core/error/exceptions.dart';
import 'package:meta/meta.dart' show required;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

abstract class HttpClientManager {
  Future<dynamic> request({
    @required Uri url,
    @required String method,
    Map body,
    Map<String, String> headers,
  });
}

class HttpClientManagerImpl implements HttpClientManager {
  final http.Client initClient;

  HttpClientManagerImpl({required this.initClient});

  Future<dynamic> request(
      {@required Uri? url,
      @required String? method,
      Map? body,
      Map<String, String>? headers}) async {
    final defaultHeaders = headers ??
        {'content-type': 'application/json', 'accept': 'application/json'};

    final jsonBody = body != null ? jsonEncode(body) : null;
    var response = http.Response('', 500);
    Future<http.Response>? futureResponse;

    try {
      switch (method) {
        case AppNetworkConstants.get:
          futureResponse = initClient.get(url!, headers: defaultHeaders);
          break;
        case AppNetworkConstants.post:
          futureResponse =
              initClient.post(url!, headers: defaultHeaders, body: jsonBody);
          break;
        case AppNetworkConstants.put:
          futureResponse =
              initClient.put(url!, headers: defaultHeaders, body: jsonBody);
          break;
        case AppNetworkConstants.delete:
          futureResponse = initClient.delete(url!, headers: defaultHeaders);
          break;
      }
      if (futureResponse != null) {
        response = await futureResponse.timeout(const Duration(seconds: 30));
      }
    } catch (error) {
      throw ServerException();
    }
    return _handleResponse(response);
  }

  dynamic _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return response.body.isEmpty ? null : jsonDecode(response.body);
      case 204:
        return null;
      case 400:
        throw ServerException(jsonDecode(response.body));
      case 401:
        throw ServerException(jsonDecode(response.body));
      case 403:
        throw ServerException(jsonDecode(response.body));
      case 404:
        throw ServerException(jsonDecode(response.body));
      case 409:
        throw ServerException(jsonDecode(response.body));
      case 500:
        throw ServerException(jsonDecode(response.body));
      case 503:
        throw ServerException(jsonDecode(response.body));
      default:
        throw ServerException(jsonDecode(response.body));
    }
  }
}
