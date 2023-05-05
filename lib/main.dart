import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sarpras/auth/sign_in.dart';
import 'package:sarpras/nav/nav.dart';
import 'package:sarpras/onboard/onboard.dart';
import 'package:sarpras/pages/search/searchresult.dart';
import 'package:sarpras/utils/themes.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Nav(),
    );
  }
}
