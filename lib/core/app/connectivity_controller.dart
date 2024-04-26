import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true); // better than setState
  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isInternetConnected(result as ConnectivityResult?);
    // ignore: lines_longer_than_80_chars
    Connectivity().onConnectivityChanged.listen(
          isInternetConnected as void Function(List<ConnectivityResult> event)?,
        );
  }

  bool isInternetConnected(ConnectivityResult? result) {
    if (result == ConnectivityResult.none) {
      isConnected.value = false;
      return false;
    } else if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnected.value = true;
      return true;
    } else {
      return false;
    }
  }
}
