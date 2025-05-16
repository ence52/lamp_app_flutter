import 'package:flutter/material.dart';
import 'package:lamp_app_flutter/screens/intro_screen.dart';
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
          home: IntroScreen(),
        );
      },
    );
  }
}
