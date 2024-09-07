import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../injection_container.dart';
import '../../view_model/onboarding_cubit/onboarding_cubit.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_btn.dart';
import 'widgets/onboarding_page_view_builder.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OnboardingCubit>(),
      child: const Stack(
        children: [
          OnboardingPageViewBuilder(),
          OnboardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextBtn(),
        ],
      ),
    );
  }
}
