import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:lamp_app_flutter/screens/details_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({super.key, required this.lamp});
  final Lamp lamp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsScreen(lamp: lamp)),
          ),
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          height: 16.h,
          margin: EdgeInsets.only(right: 6.w),
          decoration: ShapeDecoration(
            color: kSecondaryColor,
            shadows: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
            shape: SuperellipseShape(borderRadius: BorderRadius.circular(40)),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.h),
            child: Row(
              children: [
                Image.network(lamp.imageUrl, fit: BoxFit.fitWidth),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                lamp.name,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amberAccent,
                                  size: 16.sp,
                                ),
                                Text(
                                  lamp.rating.toString(),
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: Colors.white.withAlpha(100),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${lamp.price}",
                              style: GoogleFonts.poppins(
                                color: kYellowColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 7.w,
                              height: 7.w,
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
                              child: Icon(
                                Icons.add,
                                color: kTextColor,
                                size: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
