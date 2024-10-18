import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter/show_toast.dart';

bool showConnectionType = false;

Future<void> checkConnectivity(List<ConnectivityResult> results) async {
  if (results.contains(ConnectivityResult.mobile)) {
    showToast(color: Colors.blue, 'mobile');
  } else if (results.contains(ConnectivityResult.wifi)) {
    showToast(color: Colors.blue, 'wifi');
  } else if (results.contains(ConnectivityResult.ethernet)) {
    showToast(color: Colors.blue, 'ethernet');
  } else if (results.contains(ConnectivityResult.vpn)) {
    showToast(color: Colors.blue, 'vpn');
  } else if (results.contains(ConnectivityResult.bluetooth)) {
    showToast(color: Colors.blue, 'bluetooth');
  } else if (results.contains(ConnectivityResult.other)) {
    showToast(color: Colors.blue, 'not Known');
  } else if (results.contains(ConnectivityResult.none)) {
    showToast(color: Colors.blue, 'not known');
  }
  showToast(color: Colors.blue, 'not known');
}
