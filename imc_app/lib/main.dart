import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc_app/ui/android/material-app.dart';
import 'package:imc_app/ui/ios/cupertino-app.dart';

void main() =>
    Platform.isAndroid ? runApp(MyMaterialApp()) : runApp(MyCupertinoApp());
