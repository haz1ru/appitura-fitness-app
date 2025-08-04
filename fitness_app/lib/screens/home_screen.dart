import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/providers/home_provider.dart';
import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FitTheme.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Consumer<HomeProvider>(
            builder: (context, homeProvider, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello Janna",
                          style: Fonts.aText.copyWith(
                              fontWeight: FontWeight.w300)),
                      Text("Let's start exercising",
                          style: Fonts.aText.copyWith(
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 30.h),

                  Row(
                    children: List.generate(
                      homeProvider.workoutCategories.length,
                      (index) {
                        final category = homeProvider.workoutCategories[index];
                        return Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: index == 0 ? 15.w : 0),
                            child: Container(
                              height: 220.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                image: DecorationImage(
                                  image: AssetImage(category.image),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 45.h,
                                        decoration: BoxDecoration(
                                          color: category.color,
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Center(
                                          child: Text("Start", style: Fonts.cText),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Text("Recommended for you", style: Fonts.bText),
                  SizedBox(height: 20.h),
                  Row(
                    children:
                        homeProvider.recommendedWorkouts.asMap().entries.map(
                      (entry) {
                        final index = entry.key;
                        final workout = entry.value;
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: index <
                                        homeProvider.recommendedWorkouts
                                                .length -
                                            1
                                    ? 10.w
                                    : 0),
                            child: Container(
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                image: DecorationImage(
                                  image: AssetImage(workout.image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.r),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.5)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  SizedBox(height: 30.h),

                  Container(
                    width: double.infinity,
                    height: 140.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
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
                            Text("Find me a personal Trainer",
                                style: Fonts.bText, textAlign: TextAlign.center),
                            SizedBox(height: 8.h),
                            Text("Explore now", style: Fonts.eTextfade2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Container(
                    width: double.infinity,
                    height: 140.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
                        image: AssetImage("lib/assets/image8.jpg"),
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
                            Text("Find me group classes",
                                style: Fonts.bText, textAlign: TextAlign.center),
                            SizedBox(height: 8.h),
                            Text("Explore now", style: Fonts.eTextfade2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
