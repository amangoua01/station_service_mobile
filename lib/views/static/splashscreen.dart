import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:app_version/app_version.dart';
import 'package:get/get.dart';
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
            body: Center(
              child: Column(
                children: [
                  const Expanded(
                    child: Center(child: Text("LOGO")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: const [
                        CircularProgressIndicator(strokeWidth: 1),
                        SizedBox(height: 20),
                        Text(Const.appVersion)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
