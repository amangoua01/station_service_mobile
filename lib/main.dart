import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:station_service_mobile/tools/const/const.dart';
import 'package:station_service_mobile/views/static/splashscreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Const.primaryColor,
        primarySwatch: Colors.amber,
        fontFamily: Const.defaultFont.fontFamily,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Const.primaryColor,
        ),
      ),
      home: const SplashScreen(),
    ),
  );
}
