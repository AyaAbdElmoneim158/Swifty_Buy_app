import 'package:flutter/material.dart';

abstract class OnboardingRepo {
  void updatePageIndicator(
    int index,
    int currentPageIndex,
  );
  void dotNavigationClick(
    int index,
    int currentPageIndex,
    PageController pageController,
  );
  void nextPage(
    BuildContext context,
    int currentPageIndex,
    PageController pageController,
  );
  void skipPage(int currentPageIndex, PageController pageController,
      [int index = 3]);
}
