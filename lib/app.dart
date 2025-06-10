import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghardoctor/bloc/splash_bloc/splash_bloc.dart';
import 'package:ghardoctor/core/services/routes/route_helper.dart';
import 'package:ghardoctor/core/services/routes/route_name.dart';
import 'package:ghardoctor/core/theme/app_colors.dart';
import 'package:ghardoctor/core/utils/app_info.dart';
import 'app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => SplashBloc())],
      child: MaterialApp(
        navigatorKey: AppInfo.navigatorKey,
        title: AppInfo.appName,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: kPrimaryColor,
            primary: kPrimaryColor,
          ),
          useMaterial3: true,
        ),
        initialRoute: AppRoute.splashScreenPath,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
