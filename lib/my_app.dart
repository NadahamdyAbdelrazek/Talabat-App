import 'package:ecommerce_app/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E_Commerce App',
        initialRoute: "home",
        onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
      
      
      ),
    );
  }
}