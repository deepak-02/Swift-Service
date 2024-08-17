import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../dummyData.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  SavedScreenState createState() => SavedScreenState();
}

class SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        title:  Text(
          'Saved',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF262626),
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 33.sp,
                ),
                if(savedUsers.isNotEmpty)
                ListView.separated(
                  itemCount: savedUsers.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var item = savedUsers[index];
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

                                if (item['saved'] == true) {
                                  savedUsers.remove(item);
                                }
                                setState(() { });
                            },
                            child: SvgPicture.asset(
                              item['saved'] == true ? "assets/icons/saved_fill.svg" : "assets/icons/saved.svg",
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

                if(savedUsers.isEmpty)
                  Column(
                    children: [
                      SizedBox(height: 110.sp,),
                     Image.asset("assets/images/saved_empty.png",fit: BoxFit.fitWidth,height: 213.sp,),
                      SizedBox(height: 16.sp,),
                      Text(
                        'No saved services',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFF595959),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 40.sp,),
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          // backgroundColor: const Color(0xFF21C69F),
                          backgroundColor: const Color(0xFF056C95),
                          minimumSize: Size(double.infinity, 56.sp),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 15.50.sp,
                            bottom: 15.50.sp,
                          ),
                          child: Text(
                            'Return Home',
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
                  )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
