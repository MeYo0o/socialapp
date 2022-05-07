import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp/core/constants.dart';
import 'package:socialapp/screens/onboarding_screen.dart';

import 'screens/auth_screen.dart';

void main() {
  runApp(const MySocialApp());
}

class MySocialApp extends StatelessWidget {
  const MySocialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppSettings.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) => MaterialApp(
        title: 'Social App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
        ),
        home: child,
      ),
      child: const OnboardingScreen(),
    );
  }
}
