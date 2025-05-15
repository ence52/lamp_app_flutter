import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/constants.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:sizer/sizer.dart';

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
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$${lamp.price}",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        "Colors",

                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        spacing: 4.w,
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      const Color.fromARGB(255, 255, 223, 126),
                                      BlendMode.color,
                                    ),
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

                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      const Color.fromARGB(255, 255, 158, 190),
                                      BlendMode.color,
                                    ),
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

                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      Colors.blueGrey,
                                      BlendMode.color,
                                    ),
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

                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      Colors.black.withAlpha(150),
                                      BlendMode.darken,
                                    ),
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

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "+3",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 4.w,
                        children: [
                          Container(
                            height: 20.w,
                            width: 20.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.shopping_cart_checkout_rounded,
                              size: 22.sp,
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 20.w,
                              decoration: BoxDecoration(
                                color: kYellowColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Buy Now  >",
                                  style: TextStyle(
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
                color: kYellowColor.withAlpha(80),
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
              color: kYellowColor.withAlpha(80),
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
