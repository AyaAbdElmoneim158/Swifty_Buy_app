import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';
import '../../../view_model/onboarding_cubit/onboarding_cubit.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final onBoardingController = OnBoardingController.instance;
    final onBoardingController = BlocProvider.of<OnboardingCubit>(context);

    return Positioned(
      top: kToolbarHeight,
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: onBoardingController.skipPage,
        child: Text(
          "Skip",
          style: TextStyle(color: dark ? AppColors.primary : AppColors.accent),
        ),
      ),
    );
  }
}
