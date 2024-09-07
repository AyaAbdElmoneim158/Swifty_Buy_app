import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/device_utility.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';
import '../../../../data/models/onboarding_model.dart';
import '../../../view_model/onboarding_cubit/onboarding_cubit.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final onBoardingController = BlocProvider.of<OnboardingCubit>(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: onBoardingController.pageController,
        onDotClicked: onBoardingController.dotNavigationClick,
        count: OnboardingModel.onboardings.length,
        effect: SwapEffect(
          activeDotColor: dark ? AppColors.primary : AppColors.accent,
          dotHeight: 6,
        ),
      ),
    );
  }
}
