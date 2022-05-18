import 'package:device_preview/device_preview.dart';

import 'package:flutter/material.dart';
import 'package:real_estate_app/main_common.dart';

Future<void> main() async {
  await mainCommon();

  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const Application(),
  ));
}
