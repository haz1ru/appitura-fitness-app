import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:fitness_app/providers/home_provider.dart';
import 'package:fitness_app/routes/app-router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Use your design's screen size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomeProvider()),
          ],
          child: MaterialApp.router(
            title: 'Fitness App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(useMaterial3: true),
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}
