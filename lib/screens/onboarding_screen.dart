import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:socialapp/core/constants.dart';
import 'package:socialapp/core/utils.dart';

import '../widgets/onboarding_screen/intro1.dart';
import '../widgets/onboarding_screen/intro2.dart';
import '../widgets/onboarding_screen/intro3.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // debugPrint(size.width.toString());
    // debugPrint(size.height.toString());
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 600.h,
            width: double.infinity,
            child: PageView(
              controller: pageController,
              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text('Execute Function'),
            onPressed: () async {
              // AppUtils.customSnackBar(message: 'hello');

              Client client = Client();

              client
                  .setEndpoint(AppSettings.appEndPoint)
                  .setProject(AppSettings.projectId)
                  .setSelfSigned(status: AppSettings.appSelfSigned);

              Account account = Account(client);

              try {
                final user = await account.create(
                    userId: 'unique()',
                    email: 'me@appwrite.io',
                    password: 'password',
                    name: 'My Name');
                debugPrint(user.runtimeType.toString());
                debugPrint(user.toString());
              } on SocketException {
                debugPrint('Connection Error!');
              } on AppwriteException catch (err) {
                debugPrint('Appwrite Exception Code : ' + err.code.toString());
                debugPrint('Appwrite Exception Message : ' + err.message.toString());
                AppUtils.customSnackBar(message: 'hello');
              } catch (err) {
                debugPrint('Error : $err');
              }
            },
          ),
        ],
      ),
    );
  }
}
