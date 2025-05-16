import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/screens/main_page.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PageViewSection(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 15.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: TextButton(
                        onPressed:
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
                              ),
                            ),
                        child: Text(
                          "Skip",
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed:
                          () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          ),
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(
                            horizontal: 9.w,
                            vertical: 1.5.h,
                          ),
                        ),
                        elevation: WidgetStatePropertyAll(12),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(kYellowColor),
                      ),
                      child: Text(
                        "Next  >",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewSection extends StatefulWidget {
  const PageViewSection({super.key});

  @override
  State<PageViewSection> createState() => _PageViewSectionState();
}

class _PageViewSectionState extends State<PageViewSection> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 75.h,

          child: PageView(
            scrollDirection: Axis.horizontal,
            onPageChanged:
                (value) => setState(() {
                  currentPage = value;
                }),

            children: [Page(), Page(), Page()],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            spacing: 3.w,
            children: [
              CircleAvatar(
                backgroundColor:
                    currentPage == 0
                        ? Colors.white
                        : Colors.white.withAlpha(80),
                radius: 2.w,
              ),
              CircleAvatar(
                backgroundColor:
                    currentPage == 1
                        ? Colors.white
                        : Colors.white.withAlpha(80),
                radius: 2.w,
              ),
              CircleAvatar(
                backgroundColor:
                    currentPage == 2
                        ? Colors.white
                        : Colors.white.withAlpha(80),
                radius: 2.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 5.h),
      width: 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://purepng.com/public/uploads/thumbnail//grey-lamp-light-g62.png",
          ),
          SizedBox(height: 10.h),
          Text("Lamp", style: GoogleFonts.poppins(fontSize: 20.sp)),
          Text(
            "Lighting House",
            style: GoogleFonts.poppins(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 3.h),
          SizedBox(
            width: 65.w,
            child: Text(
              "Decorate your lights to make it looks deluxe",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
