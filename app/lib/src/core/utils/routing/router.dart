import 'package:app/src/features/splash/presentation/view/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../features/auth/onboarding/presentation/view/onboarding/onboarding_view.dart';
import '../../../features/splash/data/repos/splash_repo/splash_repo_impl.dart';
import 'routes.dart';

class AppRouter {
  static Route? onGenerate(RouteSettings settings) {
    // final args = settings.arguments as String;

    switch (settings.name) {
      case Routes.initRoute:
        return pageTransition(settings, const SplashView());
      case Routes.home:
        return pageTransition(settings, const NavigationMenu());
      case Routes.onboarding:
        return pageTransition(settings, const OnboardingView());
      case Routes.loginView:
        return pageTransition(settings, const LoginView());

      case Routes.noFoundRoute:
      default:
        return pageTransition(settings, const NotFoundPage());
    }
  }

  static PageTransition<dynamic> pageTransition(
    RouteSettings settings,
    Widget screen, {
    PageTransitionType type = PageTransitionType.fade,
  }) {
    return PageTransition(
      type: type,
      child: screen,
      settings: settings,
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/128/7486/7486789.png',
              width: 250,
            ),
            const SizedBox(height: 12),
            Text(
              'Sorry, this page was not found',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color(0xFF83839c),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
