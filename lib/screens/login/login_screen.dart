import 'package:country_code_picker_plus/country_code_picker_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servicemen_listing/screens/login/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  bool signup = false;

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
                height: signup == true ? 452.sp : 422.sp,
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
                        signup == true ? 'Welcome to Swift\nService!' : 'Welcome back!',
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
                    signup == true ? 'Sign up to simplify your services.' :'Sign in for fast services and new offers.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6399999856948853),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      height: 0.08.sp,
                      letterSpacing: -0.32,
                    ),
                  ),
                      SizedBox(height: 25.sp,),
                      Text(
                        'Enter phone number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16.sp,),

                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Eg: 6523 - 4566 - 67',
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
                          prefixIcon:  CountryCodePicker(
                            mode: CountryCodePickerMode.dialog,
                            onChanged: (country) {
                              if (kDebugMode) {
                                print('Country code selected: ${country.code}');
                              }
                            },
                            initialSelection: 'IN',
                            showFlag: true,
                            showDropDownButton: false,
                            // flagDecoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(100),
                            // ),
                            textStyle: TextStyle(
                              color: const Color(0xFF1A1A1A),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              height: 0.08.sp,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),

                      SizedBox(
                        height: 33.sp,
                      ),
                      ElevatedButton(
                        onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  OtpScreen(signup: signup)),
                            );

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
                            'Receive Verification Code',
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
                            signup == true ? 'Not a member? ' : 'Already a member? ',
                            style: TextStyle(
                              color: const Color(0xA3110C26),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5.sp,),
                          GestureDetector(
                            onTap: (){
                              if (signup == false) {
                                setState(() {
                                  signup = true;
                                });
                              }  else {
                                setState(() {
                                  signup = false;
                                });
                              }

                            },
                            child: Text(
                             signup == true ? 'Signin' : 'Signup',
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
