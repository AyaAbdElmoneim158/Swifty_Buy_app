import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/models/onboarding_model.dart';
import '../../../view_model/onboarding_cubit/onboarding_cubit.dart';
import 'onboarding_page.dart';

class OnboardingPageViewBuilder extends StatelessWidget {
  const OnboardingPageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = BlocProvider.of<OnboardingCubit>(context);

    return PageView.builder(
      controller: onBoardingController.pageController,
      onPageChanged: (value) => onBoardingController.updatePageIndicator,
      itemCount: OnboardingModel.onboardings.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => OnboardingPage(
        model: OnboardingModel.onboardings[index],
      ),
    );
  }
}
