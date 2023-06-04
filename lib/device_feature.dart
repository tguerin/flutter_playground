import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceFeature {

  DeviceFeature._internal();

  static final DeviceFeature _singleton = DeviceFeature._internal();

  factory DeviceFeature() {
    return _singleton;
  }

  final _deviceInfoPlugin = DeviceInfoPlugin();

  AndroidDeviceInfo? _androidDeviceInfo;

  Future<void> init() async {
    _androidDeviceInfo = await _deviceInfoPlugin.androidInfo;
  }

  bool isEdgeToEdgeAvailable() {
    return Platform.isAndroid && _androidDeviceInfo != null && _androidDeviceInfo!.version.sdkInt >= 29;
  }
}
