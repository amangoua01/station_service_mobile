import 'package:get/get.dart';
import 'package:station_service_mobile/views/controllers/global/view_controller.dart';
import 'package:station_service_mobile/views/static/auth/phone_auth.dart';

class SplashscreenVctl extends ViewController {
  @override
  void onInit() {
    super.onInit();
    redirect();
  }

  redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => const PhoneAuth());
  }
}
