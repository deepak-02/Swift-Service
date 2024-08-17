import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
             height: 95.sp,
             width: 92.sp,
             child: SvgPicture.asset(
               "assets/images/Logo.svg",
             ),
           ),
           Text(
             'Swift Service',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontSize: 34.sp,
               fontWeight: FontWeight.w500,
             ),
           ),
         ],
       ),
     ),
   );
  }
}
