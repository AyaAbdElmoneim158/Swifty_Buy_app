import 'package:flutter/material.dart';
import '../../../../../../core/utils/constants/sizes.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';
import '../../../../data/models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.model});
  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
            width: THelperFunctions.screenWidth(context) * 0.7,
            height: THelperFunctions.screenHeight(context) * 0.4,
          ),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: AppSizes.spaceBtwItems),
          Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
