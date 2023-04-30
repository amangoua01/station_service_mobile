import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:station_service_mobile/tools/const/const.dart';
import 'package:station_service_mobile/views/controllers/splash_screen_vctl.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashscreenVctl>(
      init: SplashscreenVctl(),
      builder: (ctl) {
        return Scaffold(
          backgroundColor: Const.primaryColor,
          body: Center(
            child: Lottie.asset("assets/lotties/126757-car-fuel.json"),
          ),
        );
      },
    );
  }
}
