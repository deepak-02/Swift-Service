import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return PopScope(
      canPop: page == 0,
      onPopInvoked: (bool didPop) {
        if (!didPop) {
          page = 0;
          setState(() {});
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            //background image
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                page == 0
                    ? "assets/images/onboarding2.png"
                    : "assets/images/onboarding3.png",
                fit: BoxFit.fitHeight,
              ),
            ),

            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.sp, top: 16.sp),
                    child: page == 0
                        ? Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                                );
                              },
                              child: Container(
                                width: 65.sp,
                                height: 32.sp,
                                alignment: Alignment.center,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.white
                                          .withOpacity(0.41999998688697815),
                                    ),
                                    borderRadius: BorderRadius.circular(48),
                                  ),
                                ),
                                child: const Text(
                                  'Skip',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  const Spacer(),
                  Container(
                    width: 393,
                    height: 537,
                    padding: const EdgeInsets.only(top: 199),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(-0.00, -1.00),
                        end: const Alignment(0, 1),
                        colors: [
                          Colors.white.withOpacity(0),
                          const Color(0xCC003044)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.sp),
                      child: Column(
                        children: [
                          Text(
                            page == 0
                                ? 'Best Solution\nFor Your Needs'
                                : 'Are You Looking For\nHome service',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 31.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Text(
                            '"Now it is very easy to find your home Services.\n We have a lot of workers very experienced"',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFFCBD6DB),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 25.sp,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              page == 0
                                  ? Container(
                                      width: 24.sp,
                                      height: 24.sp,
                                      alignment: Alignment.center,
                                      decoration: const ShapeDecoration(
                                        color: Colors.transparent,
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF056C95)),
                                        ),
                                      ),
                                      child: Container(
                                        width: 14.sp,
                                        height: 14.sp,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF056C95),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 14.sp,
                                      height: 14.sp,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xA0CDCDCD),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                              SizedBox(
                                width: 8.sp,
                              ),
                              page == 0
                                  ? Container(
                                      width: 14.sp,
                                      height: 14.sp,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xA0CDCDCD),
                                        shape: OvalBorder(),
                                      ),
                                    )
                                  : Container(
                                      width: 24.sp,
                                      height: 24.sp,
                                      alignment: Alignment.center,
                                      decoration: const ShapeDecoration(
                                        color: Colors.transparent,
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF056C95)),
                                        ),
                                      ),
                                      child: Container(
                                        width: 14.sp,
                                        height: 14.sp,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF056C95),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                          SizedBox(
                            height: 40.sp,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (page == 0) {
                                setState(() {
                                  page = 1;
                                });
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              // backgroundColor: const Color(0xFF21C69F),
                              backgroundColor: const Color(0xFF056C95),
                              minimumSize: Size(double.infinity, 50.sp),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                              child: Text(
                                page == 0 ? 'Continue' : 'Get Started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
