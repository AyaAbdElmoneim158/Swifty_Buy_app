import 'package:flutter/material.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/utils/helpers/cache_helper.dart';
import '../../../../../core/utils/routing/routes.dart';
import 'splash_repo.dart';

class SplashRepoImpl extends SplashRepo {
  @override
  void screenRedirect(context) {
    final token = CacheHelper.getData(key: ApiKey.token);
    final isFirstTimeOnboarding =
        CacheHelper.getData(key: ApiKey.isFirstTimeOnboarding);

    if (token != null) {
      Navigator.pushReplacementNamed(context, Routes.home);
    } else if (isFirstTimeOnboarding != null) {
      Navigator.pushReplacementNamed(context, Routes.loginView);
    } else {
      CacheHelper.saveData(key: ApiKey.isFirstTimeOnboarding, value: true);
      Navigator.pushReplacementNamed(context, Routes.onboarding);
    }

    debugPrint("token: $token");
    debugPrint("isFirstTimeOnboarding: $isFirstTimeOnboarding");
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) =>
      const DefaultWidgets(widgetName: "LoginView 🔐");
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) =>
      const DefaultWidgets(widgetName: "NavigationMenu 🧭");
}

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) =>
      const DefaultWidgets(widgetName: "OnboardingView 🛫");
}

class DefaultWidgets extends StatelessWidget {
  const DefaultWidgets({super.key, this.widgetName = "widgetName"});
  final String widgetName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          widgetName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
