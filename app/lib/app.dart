import 'package:flutter/material.dart';

import 'src/core/utils/constants/strings.dart';
import 'src/core/utils/routing/router.dart';
import 'src/core/utils/routing/routes.dart';
import 'src/core/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      //* Theme --------------------------------------------------------------
      theme: AppAppTheme.lightTheme,
      // darkTheme: AppAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: Routes.initRoute,
      onGenerateRoute: AppRouter.onGenerate,
    );
  }
}
