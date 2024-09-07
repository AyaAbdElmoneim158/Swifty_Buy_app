import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/constants/device_utility.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';
import '../../../view_model/onboarding_cubit/onboarding_cubit.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final onBoardingController = BlocProvider.of<OnboardingCubit>(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () {
          onBoardingController.nextPage(context);
          },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? AppColors.primary : AppColors.accent,
        ),
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
