import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                  FitTheme.meroonBut,
                  FitTheme.backgroundColor,
                ],
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                _buildHeader(context),

                Expanded(
                  child: _buildContent(),
                ),
                
                _buildBottomSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.go('/workout-plan'),
            child: Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: FitTheme.whiteText,
                size: 20.sp,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Daily Progress',
              textAlign: TextAlign.center,
              style: Fonts.bText
            ),
          ),
          SizedBox(width: 40.w),
        ],
      ),
    );
  }

  _buildContent() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                height: constraints.maxHeight,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.asset(
                          'lib/assets/image11.png',
                          fit: BoxFit.cover,
                          
                        ),
                      ),
                    ),

                    _buildStatsOverlay(),
                  ],
                ),
              ),
              
              SizedBox(height: 30.h),
            ],
          ),
        );
      },
    );
  }

  _buildStatsOverlay() {
    return Positioned(
      left: 20.w,
      top: 270.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStatItem('05:85', 'Time Spent'),
          SizedBox(height: 30.h),
          _buildStatItem('850', 'Heart Rate'),
          SizedBox(height: 30.h),
          _buildStatItem('1200', 'Calories'),
          SizedBox(height: 30.h),
          _buildStatItem('8500', 'Steps'),
        ],
      ),
    );
  }

  _buildStatItem(String value, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: FitTheme.whiteText,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyle(
            color: FitTheme.whiteText.withOpacity(0.8),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  _buildBottomSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: FitTheme.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.access_time,
                color: FitTheme.whiteText,
                size: 24.sp,
              ),
              SizedBox(width: 8.w),
              Text(
                '3hrs',
                style: TextStyle(
                  color: FitTheme.whiteText,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'lib/assets/icon_location.png',
                width: 24.sp,
                height: 24.sp,
                color: FitTheme.whiteText,
              ),
              SizedBox(width: 8.w),
              Text(
                '5km',
                style: TextStyle(
                  color: FitTheme.whiteText,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}