import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../main/presentation/pages/main_page.dart';
import 'onboarding_page.dart';

class OnboardingGate extends StatelessWidget {
  const OnboardingGate({super.key});

  static const boxName = 'onboarding_box';
  static const completedKey = 'completed';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Box>(
      future: Hive.openBox(boxName),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(body: SizedBox.expand());
        }

        final box = snapshot.data;
        final isCompleted = box?.get(completedKey, defaultValue: false) == true;
        if (isCompleted) {
          return const MainPage();
        }

        return const OnboardingPage();
      },
    );
  }
}
