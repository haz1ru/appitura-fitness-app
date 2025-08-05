import 'package:fitness_app/widgets/start_training_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';
import 'package:go_router/go_router.dart';

class WorkoutPlanScreen extends StatelessWidget {
  const WorkoutPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FitTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 300.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
                        image: AssetImage('lib/assets/image9.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 425.h,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full Body Workout',
                            style: Fonts.bText,
                          ),
                          SizedBox(height: 40.h),

                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Cardio', style: Fonts.fText),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Boxing', style: Fonts.fText),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Zumba', style: Fonts.fText),
                              ),
                              SizedBox(width: 15.w),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Hiking', style: Fonts.fText),
                              ),
                            ],
                          ),
                          
                          SizedBox(height: 10.h),
                          
                          SizedBox(
                            width: double.infinity,
                            child: StartTrainingButton(
                            onPressed: () {
                              context.go('/summary');
                            },
                          ),
                          ),
                          
                          SizedBox(height: 2.h),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 30.w,
                    child: GestureDetector(
                      onTap: () => context.go('/home'),
                      child: Container(
                        width: 40.w,
                        height: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: FitTheme.whiteText,
                          size: 20.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 1.h),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: FitTheme.whiteText,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Round 01',
                      style: TextStyle(
                        fontFamily: Fonts.primaryFont,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16.h),

                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Side Stretch Left',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow, 
                            color: FitTheme.whiteText, 
                            size: 20.sp
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Side Stretch Right',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow, 
                            color: FitTheme.whiteText, 
                            size: 20.sp
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20.h),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: FitTheme.whiteText,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Round 02',
                      style: TextStyle(
                        fontFamily: Fonts.primaryFont,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16.h),

                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumping Jacks',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '10x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow, 
                            color: FitTheme.whiteText, 
                            size: 20.sp
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    Row(
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Push Ups',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '5x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.w,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow, 
                            color: FitTheme.whiteText, 
                            size: 20.sp
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}