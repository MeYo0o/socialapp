import 'package:get/get.dart';

class AppUtils {
  // static void customSnackBar(String message) {
  //   Get.showSnackbar(
  //     GetSnackBar(
  //       title: 'Alert',
  //       message: message,
  //       duration: 1500.milliseconds,
  //     ),
  //   );
  // }

  static void customSnackBar({
    required String message,
    double? durationInMilli,
  }) =>
      Get.showSnackbar(GetSnackBar(
        title: 'Alert'.tr,
        message: message,
        duration: durationInMilli?.milliseconds ?? const Duration(seconds: 3),
      ));
}
