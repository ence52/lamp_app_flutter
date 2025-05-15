import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/components/horizontal_product_card.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:sizer/sizer.dart';

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
