import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 110.sp,
                      height: 110.sp,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/110x110"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(78),
                        ),
                      ),

                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 17.sp,
                        backgroundColor: const Color(0xff056c95),
                        child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 20.sp,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.sp,),
              Text(
                'Chris Kevin',
                style: TextStyle(
                  color: const Color(0xFF262626),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25.sp,),

              Container(
                // width: 96.sp,
                height: 33.sp,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF056C95)),
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Logout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF056C95),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                     SizedBox(width: 6.sp),
                    Icon(Icons.logout_outlined,  color: const Color(0xFF056C95),size: 15.sp,)
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
