import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:sizer/sizer.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 12.w,
          height: 12.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Column(
              children: [
                Icon(
                  selectedIndex == 0
                      ? FluentIcons.home_20_filled
                      : FluentIcons.home_20_regular,
                  size: 25.sp,
                ),
                selectedIndex == 0
                    ? CircleAvatar(backgroundColor: Colors.white, radius: 2)
                    : SizedBox(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 12.w,
          height: 12.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Column(
              children: [
                Icon(
                  selectedIndex == 1
                      ? FluentIcons.search_20_filled
                      : FluentIcons.search_20_regular,
                  size: 25.sp,
                ),
                selectedIndex == 1
                    ? CircleAvatar(backgroundColor: Colors.white, radius: 2)
                    : SizedBox(),
              ],
            ),
          ),
        ),
        Container(
          width: 13.w,
          height: 13.w,
          margin: EdgeInsets.only(bottom: 1.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
            borderRadius: BorderRadius.circular(100),
            color: kYellowColor,
          ),
          child: Icon(FluentIcons.cart_20_regular, size: 24.sp),
        ),
        SizedBox(
          width: 12.w,
          height: 12.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Column(
              children: [
                Icon(
                  selectedIndex == 2
                      ? FluentIcons.alert_20_filled
                      : FluentIcons.alert_20_regular,
                  size: 25.sp,
                ),
                selectedIndex == 2
                    ? CircleAvatar(backgroundColor: Colors.white, radius: 2)
                    : SizedBox(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 12.w,
          height: 12.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            child: Column(
              children: [
                Icon(
                  selectedIndex == 3
                      ? FluentIcons.person_20_filled
                      : FluentIcons.person_20_regular,
                  size: 25.sp,
                ),
                selectedIndex == 3
                    ? CircleAvatar(backgroundColor: Colors.white, radius: 2)
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
