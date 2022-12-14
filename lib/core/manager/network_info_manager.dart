/* (c) Walt Disney. All rights reserved. */

import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoManager implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoManager({required this.connectionChecker});
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
