import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_app/routes/app-router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Fitness App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(useMaterial3: true),
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}