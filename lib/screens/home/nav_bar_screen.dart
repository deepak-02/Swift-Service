import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';
import 'profile_screen.dart';
import 'saved_screen.dart';


class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key, this.index});

  final int? index;

  @override
  NavBarScreenState createState() => NavBarScreenState();
}

class NavBarScreenState extends State<NavBarScreen> {

  int _currentIndex = 0;
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    if (widget.index != null) {
      _currentIndex = widget.index!;
    }

    _pageController = PageController(initialPage: _currentIndex);

    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController
        .dispose(); // Dispose the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = [
      const HomeScreen(),
      const SavedScreen(),
      const ProfileScreen(),
    ];

    return PopScope(
        canPop: _currentIndex== 0,
      onPopInvoked: (bool didPop) {
        if (_currentIndex != 0) {
          // Navigate to the first page if the back gesture was blocked
          _pageController.jumpToPage(0);
        }
      },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          extendBodyBehindAppBar: true,
          body: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return pages[index];
            },
          ),
          bottomNavigationBar: Container(
            color: Colors.transparent,
            child: Padding(
              padding:  EdgeInsets.only(left: 8.0.sp, right: 8.0.sp),
              child: Padding(
                padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 10.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NavbarItem(
                      isSelected: _currentIndex == 0 ? true : false,
                      toolTip:  'Home',
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                          _pageController.jumpToPage(_currentIndex);
                        });
                      },
                      svgImage: const ["assets/icons/home.svg","assets/icons/home_fill.svg"],
                      name: 'Home',
                    ),
                    SizedBox(width: 50.sp,),
                    NavbarItem(
                      isSelected: _currentIndex == 1 ? true : false,
                      toolTip: 'Saved',
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                          _pageController.jumpToPage(_currentIndex);
                        });
                      },
                      svgImage: const ["assets/icons/saved.svg","assets/icons/saved_fill.svg"],
                      name: "Saved",
                    ),
                    SizedBox(width: 50.sp,),
                    NavbarItem(
                      isSelected: _currentIndex == 2 ? true : false,
                      toolTip: 'Profile',
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                          _pageController.jumpToPage(_currentIndex);
                        });
                      },
                      svgImage: const ["assets/icons/profile.svg","assets/icons/profile_fill.svg"],
                      name: "Profile",
                    ),
                  ],
                ),
              ),
            ),
          ),



        ),
    );
  }
}




class NavbarItem extends StatelessWidget {
  const NavbarItem({
    super.key,
    required this.toolTip,
    required this.onTap,
    required this.svgImage,
    this.isSelected,
    required this.name,
  });

  final String? toolTip;
  final String name;
  final void Function()? onTap;
  final List<String> svgImage;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Tooltip(
          message: toolTip ?? '',
          child: GestureDetector(
            onTap: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  isSelected == true ? svgImage[1] : svgImage[0],
                  width: 24.sp,
                  height: 24.sp,
                ),
                SizedBox(height: 6.sp,),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF595959),
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),


              ],
            ),
          ),
        ),



      ],
    );
  }
}