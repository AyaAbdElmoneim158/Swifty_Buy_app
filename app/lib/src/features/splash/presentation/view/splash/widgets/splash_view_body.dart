import 'package:app/src/core/utils/helpers/extension_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/shared/widgets/cached_network_image.dart';
import '../../../../../../core/utils/constants/images.dart';
import '../../../../../../core/utils/helpers/helper_functions.dart';
import '../../../view_model/splash_cubit/splash_cubit.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        if (state is SplashRedirect) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                height: THelperFunctions.screenHeight(context) * 0.4,
                fit: BoxFit.cover,
              ).zoomIn(),

              // // Loading *****
              buildErrorWidget(
                width: THelperFunctions.screenHeight(context) * 0.01,
                image: AssetImage(AppImages.load),
              ),
            ],
          );
        }
        return Center(
          child: buildErrorWidget(
              width: THelperFunctions.screenHeight(context) * 0.01),
        );
      },
    );
  }
}
