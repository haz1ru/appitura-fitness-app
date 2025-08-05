import 'package:flutter/material.dart';
import 'package:fitness_app/utils/colors/colors.dart';
import 'package:fitness_app/utils/fonts/fonts.dart';
import 'package:fitness_app/widgets/start_training_button_widget.dart';
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
                    height: 300,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('lib/assets/image9.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 425,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full Body Workout',
                            style: Fonts.bText,
                          ),
                          const SizedBox(height: 40),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Cardio', style: Fonts.fText),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Boxing', style: Fonts.fText),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Zumba', style: Fonts.fText),
                              ),
                              const SizedBox(width: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                decoration: BoxDecoration(
                                  color: FitTheme.redBut,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: FitTheme.redBut),
                                ),
                                child: Text('Hiking', style: Fonts.fText),
                              ),
                              const SizedBox(width: 15),
                            ],
                          ),
                          const SizedBox(height: 10),
                          StartTrainingButton(onPressed: () {
                            context.go('/summary');
                          }),
                          const SizedBox(height: 2),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: GestureDetector(
                      onTap: () => context.go('/home'),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: FitTheme.whiteText,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: FitTheme.whiteText,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Round 01',
                      style: TextStyle(
                        fontFamily: Fonts.primaryFont,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Side Stretch Left',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.play_arrow, color: FitTheme.whiteText, size: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Side Stretch Right',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.play_arrow, color: FitTheme.whiteText, size: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: FitTheme.whiteText,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Round 01',
                      style: TextStyle(
                        fontFamily: Fonts.primaryFont,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Side Stretch Left',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.play_arrow, color: FitTheme.whiteText, size: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage('lib/assets/image10.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Side Stretch Right',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '3x',
                                style: TextStyle(
                                  fontFamily: Fonts.primaryFont,
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: FitTheme.redBut,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.play_arrow, color: FitTheme.whiteText, size: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
