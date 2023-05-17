// ignore_for_file: unused_import
import 'dart:io' show Platform;

import 'package:app_imc/ui/android/material-app.dart';
import 'package:flutter/material.dart';

import 'ui/ios/cupertino-app.dart';

void main() =>
    Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
