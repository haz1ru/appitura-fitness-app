import 'package:fitness_app/screens/summary_screen.dart';
import 'package:fitness_app/screens/workout_plan_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:fitness_app/screens/home_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/workout-plan',
        name: 'workoutPlan',
        builder: (context, state) => const WorkoutPlanScreen(),
      ),
      GoRoute(
        path: '/summary',
        name: 'summary',
        builder: (context, state) => const SummaryScreen(),
      ),
    ],
  );
}