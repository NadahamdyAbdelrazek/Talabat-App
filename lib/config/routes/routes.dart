import 'package:ecommerce_app/features/home/presentation/pages/home.dart';
import 'package:ecommerce_app/features/login/presentation/pages/login.dart';
import 'package:ecommerce_app/features/signup/presentation/pages/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesName {
  static const String Login = "Login";
  static const String home = "home";
  static const String signUp = "signUp";
}

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.Login:
        return MaterialPageRoute(builder: (context) => LoginScreen(),
        );
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen(),
        );
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) => SignUpScreen(),
        );
        
      default:
        return MaterialPageRoute(builder: (context) => unDefineRoute(),);
    }
  }
  static Widget unDefineRoute(){
    return Scaffold(
      body: Center(child: Text("Route not Found")),

    );
  }
}
