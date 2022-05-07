import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialapp/core/constants.dart';
import 'package:socialapp/screens/home_screen.dart';
import 'package:socialapp/widgets/common/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(1500.milliseconds).then(
      (_) => Get.off(
        () => const HomeScreen(),
        transition: Transition.leftToRight,
        duration: 1500.milliseconds,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appColor = AppColors();
    return Scaffold(
      backgroundColor: appColor.darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'the',
            style: GoogleFonts.poppins(
              color: appColor.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 30.sp,
            ),
            children: [
              TextSpan(
                text: 'Social',
                style: GoogleFonts.poppins(
                  color: appColor.blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 34.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
