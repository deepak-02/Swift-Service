import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servicemen_listing/screens/home/nav_bar_screen.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  SetupScreenState createState() => SetupScreenState();
}

class SetupScreenState extends State<SetupScreen> {
  @override
  Widget build(BuildContext context) {

    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: const Color(0xFFE5E7EB),
                      child: CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.arrow_back_ios_new,size: 16.sp,),
                      ),
                    ),
                  ),

                  Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF1A1A1A),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                    ),
                  ),
                  SizedBox(
                    width: 40.sp,
                    height: 10.sp,
                  ),
                ],
              ),
              const Divider(),
              SizedBox(height: 32.sp,),
              Text(
                'Let’s know more about you',
                style: TextStyle(
                  color: const Color(0xFF1A1A1A),
                  fontSize: 33.sp,
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(height: 16.sp,),
              Text(
                'Provide basic information to setup your account',
                style: TextStyle(
                  color: const Color(0xFF5C5C5C),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(height: 40.sp,),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 11.sp,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 164.50.sp,
                    height: 55.56.sp,
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'First name',
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
                    ),
                  ),
                  Container(
                    width: 164.50.sp,
                    height: 55.56.sp,
                    alignment: Alignment.center,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Last name',
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
                    ),
                  ),

                ],
              ),
              SizedBox(height: 24.sp,),
              Text(
                'Email Address',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 11.sp,),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
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
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  showDialogue();
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
                    'Finish Setup',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Spacer(),

            ],
          ),
        ),
      ),
    );
  }

  void showDialogue() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
            ),
            backgroundColor: Colors.white,
            title: SvgPicture.asset(
              "assets/icons/success.svg"
            ),
            alignment: Alignment.center,
            content: Padding(
              padding: EdgeInsets.only(top: 32.sp,bottom: 32.sp,right: 8.sp,left: 8.sp),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Congratulations!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF262626),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(height: 16.sp,),
                  Text(
                    'Your swift service account has been created successfully!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF595959),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavBarScreen()),
      );
    });
  }
}
