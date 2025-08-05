import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final workoutCategories = [
      {
        'image': "lib/assets/image1.jpg",
        'color': FitTheme.meroonBut,
      },
      {
        'image': "lib/assets/image2.jpg",
        'color': FitTheme.pinckBut,
      },
    ];

    final recommendedWorkouts = [
      "lib/assets/image3.jpg",
      "lib/assets/image4.jpg",
      "lib/assets/image8.jpg",
    ];

    return Scaffold(
      backgroundColor: FitTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Janna",
                    style: Fonts.bText,
                  ),
                  Text(
                    "Let's start exercising",
                    style: Fonts.bText,
                  ),
                ],
              ),
              
              SizedBox(height: 30.h),

              Row(
                children: List.generate(
                  workoutCategories.length,
                  (index) {
                    final category = workoutCategories[index];
                    return Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: index == 0 ? 15.w : 0),
                        height: 165.h,
                        width: 159.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          image: DecorationImage(
                            image: AssetImage(category['image'] as String),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7)
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () => context.go('/workout-plan'),
                                  child: Container(
                                    width: 91.w,
                                    height: 22.h,
                                    decoration: BoxDecoration(
                                      color: category['color'] as Color,
                                      borderRadius: BorderRadius.circular(25.r),
                                    ),
                                    child: Center(
                                      child: Text("Start", style: Fonts.eText),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              SizedBox(height: 40.h),
              
              Text("Recommended for you", style: Fonts.cText),
              SizedBox(height: 20.h),
              
              Row(
                children: recommendedWorkouts.asMap().entries.map((entry) {
                  final index = entry.key;
                  final image = entry.value;
                  return Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: index < recommendedWorkouts.length - 1 ? 10.w : 0,
                      ),
                      height: 82.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30.h),

              Container(
                width: double.infinity,
                height: 103.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/image6.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Find me a personal Trainer",
                          style: Fonts.cText,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "Explore now",
                          style: Fonts.eTextfade2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 20.h),
              
              Container(
                width: double.infinity,
                height: 103.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage("lib/assets/image7.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7)
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Find me group classes",
                          style: Fonts.cText,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "Explore now",
                          style: Fonts.eTextfade2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}