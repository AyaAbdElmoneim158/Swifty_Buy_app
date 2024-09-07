import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../data/repos/onboarding_repo/onboarding_repo.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this.onboardingRepo) : super(OnboardingInitial());
  static OnboardingCubit get(context) => BlocProvider.of(context);
  OnboardingRepo onboardingRepo;

  final PageController pageController = PageController();
  int currentPageIndex = 0;

  void updatePageIndicator(int index) {
    onboardingRepo.updatePageIndicator(index, currentPageIndex);
    emit(OnboardingPageChanged(currentPageIndex));
  }

  void dotNavigationClick(int index) {
    onboardingRepo.dotNavigationClick(index, currentPageIndex, pageController);
    emit(OnboardingPageChanged(currentPageIndex));
  }

  void nextPage(BuildContext context) {
    onboardingRepo.nextPage(context, currentPageIndex, pageController);
    currentPageIndex += 1;
    emit(OnboardingPageChanged(currentPageIndex));
  }

  void skipPage([int index = 3]) {
    onboardingRepo.skipPage(currentPageIndex, pageController);
    emit(OnboardingPageChanged(currentPageIndex));
  }
}
