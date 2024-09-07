import 'package:flutter/material.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/utils/helpers/cache_helper.dart';
import '../../../../../core/utils/routing/routes.dart';
import 'onboarding_repo.dart';

class OnboardingRepoImpl extends OnboardingRepo {
  @override
  void updatePageIndicator(
    int index,
    int currentPageIndex,
  ) {
    currentPageIndex = index;
    debugPrint("updatePageIndicator: currentPageIndex: $currentPageIndex");
  }

  @override
  void dotNavigationClick(
    int index,
    int currentPageIndex,
    PageController pageController,
  ) {
    currentPageIndex = index;
    pageController.jumpToPage(index);
    debugPrint("dotNavigationClick: currentPageIndex: $currentPageIndex");
  }

  @override
  void nextPage(
    BuildContext context,
    int currentPageIndex,
    PageController pageController,
  ) {
    if (currentPageIndex == 3) {
      CacheHelper.saveData(key: ApiKey.isFirstTimeOnboarding, value: false);
      Navigator.pushReplacementNamed(context, Routes.loginView);
      debugPrint("isFirstTime: is Saved");
    } else {
      currentPageIndex += 1;
      pageController.jumpToPage(currentPageIndex);
    }
    debugPrint("nextPage: currentPageIndex: $currentPageIndex");
  }

  @override
  void skipPage(int currentPageIndex, PageController pageController,
      [int index = 3]) {
    currentPageIndex = index;
    pageController.jumpToPage(currentPageIndex);
    debugPrint("skipPage: currentPageIndex: $currentPageIndex");
  }
}
