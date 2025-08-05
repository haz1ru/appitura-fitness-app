import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/widgets/start_training_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'lib/assets/splash_image.jpg',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[900],
                child: Icon(
                  Icons.fitness_center,
                  color: Colors.grey[600],
                  size: 100.sp,
                ),
              ),
            ),
          ),
          
          // Dark overlay
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // Content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title text
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Text(
                        'Join the Fitness\nClub',
                        style: TextStyle(
                          color: FitTheme.whiteText,
                          fontSize: constraints.maxWidth < 350 ? 32.sp : 36.sp,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      );
                    },
                  ),
                  
                  SizedBox(height: 24.h),
                  
                  // Start button
                  SizedBox(
                    width: double.infinity,
                    child: StartTrainingButton(
                      onPressed: () {
                        context.go('/home');
                      },
                    ),
                  ),
                  
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}