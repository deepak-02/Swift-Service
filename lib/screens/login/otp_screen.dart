import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servicemen_listing/screens/login/setup_screen.dart';

import '../home/nav_bar_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, this.number, required this.signup});

  final String? number;
  final bool signup;

  @override
  OtpScreenState createState() => OtpScreenState();
}

class OtpScreenState extends State<OtpScreen> {

  bool signup = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      signup = widget.signup;
    });
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: signup == true ? const Color(0xff14b4ca) : const Color(0xff207ec2),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              SizedBox(
                height: 215.sp,
                width: 215.sp,
                child: SvgPicture.asset(
                  signup == true ? "assets/images/add.svg" : "assets/images/shield.svg",
                ),
              ),
              const Spacer(),
              Container(
                width: 393.sp,
                height: 422.sp,
                padding: EdgeInsets.only(top: 40.sp),
                clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.sp,right: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Security Check',
                        style: TextStyle(
                          color: const Color(0xFF1A1A1A),
                          fontSize: 33.sp,
                          fontWeight: FontWeight.w700,
                          height: 0.sp,
                          letterSpacing: -0.32,
                        ),
                      ),
                      SizedBox(height: 16.sp,),
                      Text(
                        'Please verify with the code send to your phone',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6399999856948853),
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.32,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                             'number ',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6399999856948853),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.32,
                            ),
                          ),
                          Text(
                             widget.number ?? '7123456789',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.6399999856948853),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.08.sp,
                              letterSpacing: -0.32,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/edit_line.svg",
                          ),
                        ],
                      ),
                      SizedBox(height: 25.sp,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 76.25.sp,
                            height: 58.sp,
                            alignment: Alignment.center,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '-',
                                hintStyle: TextStyle(
                                  color: const Color(0xFF747688),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.sp, color: const Color(0xFFD9D9D9)),
                                  borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                                ),
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Container(
                            width: 76.25.sp,
                            height: 58.sp,
                            alignment: Alignment.center,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '-',
                                hintStyle: TextStyle(
                                  color: const Color(0xFF747688),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.sp, color: const Color(0xFFD9D9D9)),
                                  borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                                ),
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Container(
                            width: 76.25.sp,
                            height: 58.sp,
                            alignment: Alignment.center,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '-',
                                hintStyle: TextStyle(
                                  color: const Color(0xFF747688),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.sp, color: const Color(0xFFD9D9D9)),
                                  borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                                ),
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          Container(
                            width: 76.25.sp,
                            height: 58.sp,
                            alignment: Alignment.center,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: '-',
                                hintStyle: TextStyle(
                                  color: const Color(0xFF747688),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 0.08.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1.sp, color: const Color(0xFFD9D9D9)),
                                  borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                                ),
                              ),
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 33.sp,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (signup == true) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const SetupScreen()),
                            );

                          }  else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const NavBarScreen()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          // backgroundColor: const Color(0xFF21C69F),
                          backgroundColor: const Color(0xFF056C95),
                          minimumSize: Size(double.infinity, 56.sp),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 15.50.sp,
                            bottom: 15.50.sp,
                          ),
                          child: Text(
                            signup == true ? 'Verify & Setup' : 'Verify & Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.sp,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Didn`t get code? ',
                            style: TextStyle(
                              color: const Color(0xA3110C26),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5.sp,),
                          GestureDetector(
                            onTap: (){

                            },
                            child: Text(
                              'Resend',
                              style: TextStyle(
                                color: const Color(0xFF056C95),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),)
                        ],
                      )




                    ],
                  ),
                ),

              ),
            ],

          ),
        ),
      ),
    );
  }
}
