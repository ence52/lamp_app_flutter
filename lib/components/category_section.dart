import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:sizer/sizer.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5.w, top: 5.w, bottom: 5.w),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap:
                () => setState(() {
                  selectedIndex = index;
                }),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: selectedIndex == index ? kYellowColor : kSecondaryColor,
                boxShadow:
                    selectedIndex == index
                        ? [
                          BoxShadow(
                            color: Colors.black.withAlpha(50),
                            blurRadius: 8,
                            offset: Offset(0, 10),
                          ),
                        ]
                        : [],
              ),
              margin: EdgeInsets.only(right: 5.w),
              child: Center(
                child: Text(
                  lampTypes[index],
                  style: GoogleFonts.poppins(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: lampTypes.length,
        shrinkWrap: true,
      ),
    );
  }
}
