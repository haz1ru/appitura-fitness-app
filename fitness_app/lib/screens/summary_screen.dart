import 'package:fitness_app/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  FitTheme.meroonBut, // Your maroon color
                  FitTheme.backgroundColor, // Your black background
                ],
              ),
            ),
          ),

          Positioned(
                    top: 30,
                    left: 30,
                    child: GestureDetector(
                      onTap: () => context.go('/workout-plan'),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: FitTheme.whiteText,
                        size: 20,
                      ),
                    ),
                  ),

          Positioned(
            top: 58.h,
            left: 49.w,
            child: SizedBox(
              width: 261.w,
              height: 26.h,
              child: Text(
                'Daily Progress',
                textAlign: TextAlign.center,
                style: Fonts.bText,
              ),
            ),
          ),

          Positioned(
            top: 91.h,
            left: 94.w,
            child: Image.asset(
              'lib/assets/image11.png',
              width: 281.w,
              height: 721.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 281.w,
                height: 721.h,
                color: Colors.grey[800],
                child: Icon(
                  Icons.image_not_supported,
                  color: Colors.grey[600],
                  size: 30.w,
                ),
              ),
            ),
          ),

          Positioned(
            top: 375.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('05:85', style: Fonts.cText),
            ),
          ),

          Positioned(
            top: 401.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Time Spent', style: Fonts.eText),
            ),
          ),

          Positioned(
            top: 449.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('850', style: Fonts.cText),
            ),
          ),

          Positioned(
            top: 475.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Heart Rate', style: Fonts.eText),
            ),
          ),

          Positioned(
            top: 515.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('1200', style: Fonts.cText),
            ),
          ),

          Positioned(
            top: 541.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Calories', style: Fonts.eText),
            ),
          ),

          Positioned(
            top: 585.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('8500', style: Fonts.cText),
            ),
          ),

          Positioned(
            top: 611.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Steps', style: Fonts.eText),
            ),
          ),

          Positioned(
            top: 739.h,
            left: 0,
            child: Container(
              width: 375.w, 
              height: 73.h, 
              color: FitTheme.backgroundColor,
            ),
          ),

          // Clock icon
          Positioned(
            top: 655.h,
            left: 62.w,
            child: Image.asset(
              'assets/icon/icon_clock.png',
              width: 26.w,
              height: 29.h,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.access_time, color: FitTheme.whiteText, size: 26.w),
            ),
          ),

          Positioned(
            top: 655.h,
            left: 260.w,
            child: Image.asset(
              'lib/assets/icon_location.png',
              width: 26.w,
              height: 29.h,
              fit: BoxFit.contain,
            ),
          ),

          Positioned(
            top: 657.h,
            left: 102.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('2hrs', style: Fonts.cText),
            ),
          ),

          Positioned(
            top: 657.h,
            left: 286.w,
            child: SizedBox(
              width: 45.w,
              height: 26.h,
              child: Text('5km', style: Fonts.cText),
            ),
          ),
        ],
      ),
    );
  }
}