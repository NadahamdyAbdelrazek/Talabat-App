import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'config.dart';
import 'core/cache/shared_pref.dart';
import 'core/utils/observer.dart';
import 'my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  configureDependencies();
  runApp(const MyApp());
}




