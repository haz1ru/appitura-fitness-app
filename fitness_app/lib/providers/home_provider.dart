import 'package:flutter/material.dart';

class WorkoutCategory {
  final String title;
  final String image;
  final Color color;

  WorkoutCategory({
    required this.title,
    required this.image,
    required this.color,
  });
}

class RecommendedWorkout {
  final String title;
  final String image;

  RecommendedWorkout({
    required this.title,
    required this.image,
  });
}

class HomeProvider extends ChangeNotifier {
  final List<WorkoutCategory> _workoutCategories = [
    WorkoutCategory(
      title: "Cycling",
      image: "lib/assets/image1.jpg",
      color: Color(0xFF8B0000),
    ),
    WorkoutCategory(
      title: "Gym Workout",
      image: "lib/assets/image2.jpg",
      color: Color(0xFFF06666),
    ),
  ];

  final List<RecommendedWorkout> _recommendedWorkouts = [
    RecommendedWorkout(title: "Yoga", image: "lib/assets/image3.jpg"),
    RecommendedWorkout(title: "Cardio", image: "lib/assets/image4.jpg"),
    RecommendedWorkout(title: "Stretching", image: "lib/assets/image6.jpg"),
  ];

  List<WorkoutCategory> get workoutCategories => _workoutCategories;
  List<RecommendedWorkout> get recommendedWorkouts => _recommendedWorkouts;
}
