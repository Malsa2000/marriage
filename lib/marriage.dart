import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marriage/login/login.dart';
import 'package:marriage/onboarding/Intropage.dart';
import 'package:marriage/onboarding_screen/onboarding_controller.dart';
import 'package:marriage/screens/homepage.dart';

class Marriage extends ConsumerWidget {
  const Marriage({Key? key, required this.token}) : super(key: key);
  final String? token;

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(onboardingControllerProvider.notifier).check();
    final intro = ref.watch(onboardingControllerProvider);
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: intro.when(
        visited: () =>  const Homepage(),
        // visited: () => token == null ? const Login() : const Homepage(),
        unvisited: () => const OnboardingScreen(),
        loading: () => const Material(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
