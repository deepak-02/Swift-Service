import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'specialist_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {


  String dealPercentage = '30% OFF';
  String imagePath = 'assets/images/c1.png';
  int currentState = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        // Increment currentState and cycle back to 0 if it reaches 3
        currentState = (currentState + 1) % 3;

        // Update dealPercentage and imagePath based on currentState
        switch(currentState) {
          case 0:
            dealPercentage = '30% OFF';
            imagePath = 'assets/images/c1.png';
            break;
          case 1:
            dealPercentage = '15% OFF';
            imagePath = 'assets/images/c2.png';
            break;
          case 2:
            dealPercentage = '10% OFF';
            imagePath = 'assets/images/c3.png';
            break;
        }
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 2,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 16,
            child: Icon(Icons.person),
          ),
        ),
        title:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                color: const Color(0xFF646464),
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.06,
              ),
            ),
            Text(
              'Chris Kevin',
              style: TextStyle(
                color: const Color(0xFF121212),
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: 0.07,
              ),
            )

          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp,right: 20.sp,bottom: 20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.sp,),

                Container(
                  height: 131,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF056C95),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/caurosal_background.svg",
                      ),
                      // person image
                      Positioned(
                        right: 10,
                        bottom: 0,
                        child: SizedBox(
                          height: 130.sp,
                          width: 120.sp,
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.fitHeight,

                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(16.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 72,
                              height: 21,
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF1BB2EE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "🔥",
                                    style: TextStyle(
                                        fontSize: 10.sp
                                    ),
                                  ),
                                  SizedBox(width: 3.sp),
                                  Text(
                                    'Hot Deal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12.sp,),
                            //deal percentage
                            Text(
                              dealPercentage,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 7.sp),
                            Text(
                              'On your cleaning service today.',
                              style: TextStyle(
                                color: const Color(0xFFEEEEEE),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),




                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25.sp,),

                Text(
                  'All Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20.sp,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AllCategories(icon: "assets/icons/cleaning.svg",name: "Cleaning",onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const SpecialistListScreen()),
                        );
                      },),
                      AllCategories(icon: "assets/icons/construction.svg",name: "Construction",onTap: (){},),
                      AllCategories(icon: "assets/icons/painting.svg",name: "Painting",onTap: (){},),
                      AllCategories(icon: "assets/icons/gardening.svg",name: "Gardening",onTap: (){},),
                      AllCategories(icon: "assets/icons/repair.svg",name: "Repair",onTap: (){},),
                      AllCategories(icon: "assets/icons/washing.svg",name: "Washing",onTap: (){},),
                    ],
                  ),
                ),

                SizedBox(height: 25.sp,),

                Text(
                  'Top Services',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16.sp,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopServices(icon: "assets/icons/laptop_service.svg",name: "Laptop Service",onTap: (){},),
                    TopServices(icon: "assets/icons/house_cleaning.svg",name: "House Cleaning",onTap: (){},),
                  ],
                ),
                SizedBox(height: 13.sp,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopServices(icon: "assets/icons/ac_service.svg",name: "Ac Service",onTap: (){},),
                    TopServices(icon: "assets/icons/car_wash.svg",name: "Car Wash",onTap: (){},),
                  ],
                ),
                SizedBox(height: 13.sp,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TopServices(icon: "assets/icons/painting_blue.svg",name: "painting",onTap: (){},),
                    TopServices(icon: "assets/icons/painting_blue.svg",name: "painting",onTap: (){},),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopServices extends StatelessWidget {
  const TopServices({
    super.key, required this.icon, required this.name, this.onTap,
  });

  final String icon;
  final String name;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170.sp,
        height: 97.sp,
        padding: EdgeInsets.all(12.sp),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0x113BB4BD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  icon,
                ),
                const Icon(Icons.arrow_forward_ios_rounded,color: Color(0xff056c95),)
              ],
            ),
            SizedBox(height: 13.sp,),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AllCategories extends StatelessWidget {
  const AllCategories({
    super.key, required this.icon, required this.name, this.onTap,
  });
  final String icon;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6.5.sp),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
                icon,
            ),
            SizedBox(height: 10.sp,),
            Text(
              name,
              style: TextStyle(
                color: const Color(0xFF263A56),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
