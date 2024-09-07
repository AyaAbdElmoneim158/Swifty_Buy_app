part of 'onboarding_cubit.dart';

class OnboardingState {}

final class OnboardingInitial extends OnboardingState {}

class OnboardingPageChanged extends OnboardingState {
  final int currentPageIndex;

  OnboardingPageChanged(this.currentPageIndex);
}
