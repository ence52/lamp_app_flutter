import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/components/details_screen/colors_section.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:sizer/sizer.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.lamp});
  final Lamp lamp;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: kDefaultPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(lamp.imageUrl),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          blurRadius: 8,
                          offset: Offset(0, 6),
                        ),
                      ],
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 2.h,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            lamp.name,
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "\$${lamp.price}",
                            style: GoogleFonts.poppins(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          textStyle: TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Text(
                        "Colors",

                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ColorsSection(lamp: lamp),
                      Row(
                        spacing: 4.w,
                        children: [
                          Container(
                            height: 20.w,
                            width: 20.w,

                            decoration: ShapeDecoration(
                              color: kPrimaryColor,
                              shadows: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(50),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                              shape: SuperellipseShape(
                                side: BorderSide(
                                  color: Colors.white,
                                  strokeAlign: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: Icon(
                              Icons.shopping_cart_checkout_rounded,
                              size: 22.sp,
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 20.w,
                              decoration: ShapeDecoration(
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(50),
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                                shape: SuperellipseShape(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                color: kYellowColor,
                              ),

                              child: Center(
                                child: Text(
                                  "Buy Now  >",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TopBar(),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kDefaultPadding * 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 10.w,
              width: 10.w,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(50),
                borderRadius: BorderRadius.circular(200),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,

                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            height: 10.w,
            width: 10.w,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(50),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Center(
              child: Icon(Icons.favorite_border_outlined, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
