import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:lamp_app_flutter/screens/details_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.lamp});
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
        aspectRatio: 7 / 8,
        child: Container(
          margin: EdgeInsets.only(right: 6.w),
          /* decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
          ), */
          decoration: ShapeDecoration(
            color: kSecondaryColor,
            shadows: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
            shape: SuperellipseShape(borderRadius: BorderRadius.circular(45)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.network(lamp.imageUrl, fit: BoxFit.fitHeight),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lamp.name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
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
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
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
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 8.w,
                      height: 8.w,
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
                      child: Icon(Icons.add, color: kTextColor, size: 20.sp),
                    ),
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
