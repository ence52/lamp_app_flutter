import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lamp_app_flutter/data.dart';
import 'package:sizer/sizer.dart';

class ColorsSection extends StatelessWidget {
  const ColorsSection({super.key, required this.lamp});

  final Lamp lamp;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
