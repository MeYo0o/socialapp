import 'package:flutter/material.dart';

class AppSettings {
  //backend
  static const String appEndPoint = 'http://meyo.ddns.net:3333/v1';
  static const String projectId = '627246dc8443dbd5dc68';
  static const bool appSelfSigned = true;
  //design
  static const designSize = Size(392.72727272727275, 759.2727272727273);
}

class AppColors {
  final Color lightColor = const Color(0xff6c788a);
  final Color darkColor = const Color(0xFF100E20);
  final Color blueColor = Colors.lightBlueAccent.shade400;
  final Color lightBlueColor = Colors.lightBlueAccent.shade200;
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
  final Color blueGreyColor = Colors.blueGrey.shade900;
  final Color greenColor = Colors.greenAccent;
  final Color yellowColor = Colors.yellow;
  final Color transparent = Colors.transparent;
  final Color greyColor = Colors.grey.shade600;
}
