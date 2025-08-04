import 'package:fitness_app/widgets/start_training_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox.expand(
            child: Image.asset(
              'lib/assets/splash_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join the Fitness\nClub',
                  style: Fonts.aText,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: StartTrainingButton(
                        onPressed: () {
                          context.go('/home');
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32), // Bottom spacing
              ],
            ),
          ),
        ],
      ),
    );
  }
}