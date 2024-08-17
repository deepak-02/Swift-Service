import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:servicemen_listing/dummyData.dart';

class SpecialistListScreen extends StatefulWidget {
  const SpecialistListScreen({super.key});

  @override
  State<SpecialistListScreen> createState() => _SpecialistListScreenState();
}

class _SpecialistListScreenState extends State<SpecialistListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading:  Padding(
          padding: EdgeInsets.all(8.0.sp),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFFE5E7EB),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                radius: 19,
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back_ios_new,size: 16.sp,),
              ),
            ),
          ),
        ),
        title: Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF1A1A1A),
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            height: 0.10,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 20.sp,right: 20.sp),
        child: Column(
          children: [
            SizedBox(height: 33.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 7.sp),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF056C95),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'All ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5.sp),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10.sp,
                        child:  Text(
                          '${users.length}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 7.sp),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFE6E6E8)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'House',
                    style: TextStyle(
                      color: const Color(0xFF484848),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 7.sp),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFE6E6E8)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Vehicles',
                    style: TextStyle(
                      color: const Color(0xFF484848),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 13.sp, vertical: 7.sp),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFE6E6E8)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    'Appliances',
                    style: TextStyle(
                      color: const Color(0xFF484848),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 15.sp,),

            Expanded(
              child: ListView.separated(
                itemCount: users.length,
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = users[index];
                  return Container(
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 16, bottom: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFE6E6E8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 72.sp,
                              height: 72.sp,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/72x72"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: 12.sp, right: 12.sp),
                              child: Column(
                                children: [
                                  Text(
                                    item['name'],
                                    style: TextStyle(
                                      color: const Color(0xFF110C26),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6.sp, vertical: 3.sp),
                                    decoration: ShapeDecoration(
                                      color: const Color(0x14EFA73D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: const Color(0xffefa83d),
                                          size: 16.sp,
                                        ),
                                        Text(
                                          "${item['rating']} (${item['rated']})",
                                          style: TextStyle(
                                            color: const Color(0xFF060D17),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              item['saved'] = !item['saved'];
                              if (item['saved'] == true) {
                                savedUsers.add(item);
                              }else {
                                savedUsers.remove(item);
                              }

                            });
                          },
                          child: SvgPicture.asset(
                            savedUsers.contains(item) ? "assets/icons/saved_fill.svg" : "assets/icons/saved.svg",
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.sp,
                  );
                },
              ),
            ),
            SizedBox(height: 10.sp,),
          ],
        ),
      ),


    );
  }
}
