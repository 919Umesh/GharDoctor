import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghardoctor/bloc/splash_bloc/splash_bloc.dart';
import 'package:ghardoctor/core/services/routes/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashBloc>(context).add(SplashScreenStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [const Text('dfgfd')],
          ),
        );
      },
      listener: (context, state) {
        if (state is SplashNavigateToHome) {
          Navigator.pushReplacementNamed(context, AppRoute.splashScreenPath);
        } else if (state is SplashNavigateToLogin) {
          Navigator.pushReplacementNamed(context, AppRoute.splashScreenPath);
        } else {
          Navigator.pushReplacementNamed(context, AppRoute.splashScreenPath);
        }
      },
    );
  }
}
