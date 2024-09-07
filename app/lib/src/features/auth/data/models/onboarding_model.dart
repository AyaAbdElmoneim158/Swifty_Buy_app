import '../../../../core/utils/constants/images.dart';
import '../../../../core/utils/constants/strings.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  static List<OnboardingModel> onboardings = [
    OnboardingModel(
      image: AppImages.onboarding1,
      title: AppStrings.onboardingTitle1,
      subTitle: AppStrings.onboardingSubTitle1,
    ),
    OnboardingModel(
      image: AppImages.onboarding2,
      title: AppStrings.onboardingTitle2,
      subTitle: AppStrings.onboardingSubTitle2,
    ),
    OnboardingModel(
      image: AppImages.onboarding3,
      title: AppStrings.onboardingTitle3,
      subTitle: AppStrings.onboardingSubTitle3,
    ),
    OnboardingModel(
      image: AppImages.onboarding4,
      title: AppStrings.onboardingTitle4,
      subTitle: AppStrings.onboardingSubTitle4,
    ),
  ];
}
