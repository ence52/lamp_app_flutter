import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:lamp_app_flutter/details_screen.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: darkTheme,
          home: MainPage(),
        );
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ButtomNavBar(),
        body: ListView(
          children: [
            TitleSection(),
            CategorySection(),
            RecommendedSection(),
            RecommendedSlider(),
            PopularLampSection(),
            PopularLampsSlider(),
            OnSaleSection(),
            PopularLampsSlider(),
          ],
        ),
      ),
    );
  }
}

class OnSaleSection extends StatelessWidget {
  const OnSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "On Sale",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          Text("See All", style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}

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

class PopularLampsSlider extends StatelessWidget {
  const PopularLampsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 5.w, top: 2.5.h, bottom: 2.5.h),
        scrollDirection: Axis.horizontal,
        itemCount: lampList.length,
        itemBuilder:
            (context, index) => HorizontalProductCard(lamp: lampList[index]),
      ),
    );
  }
}

class PopularLampSection extends StatelessWidget {
  const PopularLampSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Lamps",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          Text("See All", style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}

class RecommendedSlider extends StatelessWidget {
  const RecommendedSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 5.w, top: 5.w, bottom: 5.w),
        scrollDirection: Axis.horizontal,
        itemCount: lampList.length,
        itemBuilder: (context, index) => ProductCard(lamp: lampList[index]),
      ),
    );
  }
}

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
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amberAccent,
                          size: 18.sp,
                        ),
                        Text(
                          lamp.rating.toString(),
                          style: TextStyle(
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
                      style: TextStyle(
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
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(50),
                blurRadius: 8,
                offset: Offset(0, 6),
              ),
            ],
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
                        FittedBox(
                          child: Text(
                            lamp.name,
                            style: TextStyle(
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
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Colors.white.withAlpha(100),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${lamp.price}",
                              style: TextStyle(
                                color: kYellowColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 6.w,
                              height: 6.w,
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

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recommended",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          Text("See All", style: TextStyle(fontSize: 16.sp)),
        ],
      ),
    );
  }
}

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
                boxShadow:
                    selectedIndex == index
                        ? [
                          BoxShadow(
                            color: Colors.black.withAlpha(50),
                            blurRadius: 8,
                            offset: Offset(0, 6),
                          ),
                        ]
                        : [],
                color: selectedIndex == index ? kYellowColor : kSecondaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.only(right: 5.w),
              child: Center(
                child: Text(
                  lampTypes[index],
                  style: TextStyle(fontSize: 15.5.sp),
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

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w, top: 5.w, right: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Exclusive Lights",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                "for your house",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSylJlQp5yIklfeRnc7xVsANXslPZKn5LgmQkVxUMo7FXNLBnS3KBAjpTsQUc6xnNDR5sY&usqp=CAU",
                ),
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
