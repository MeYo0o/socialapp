import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        left: 10,
        right: 10,
        bottom: 10,
      ),
      color: Colors.pink,
    );
  }
}
