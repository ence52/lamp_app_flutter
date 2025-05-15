import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/components/buttom_navbar.dart';
import 'package:lamp_app_flutter/components/category_section.dart';
import 'package:lamp_app_flutter/components/popular_lamp_slider.dart';
import 'package:lamp_app_flutter/components/product_card.dart';
import 'package:lamp_app_flutter/data.dart';
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
