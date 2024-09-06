import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../injection_container.dart';
import '../../../../../core/utils/constants/colors.dart';
import '../../view_model/splash_cubit/splash_cubit.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SplashCubit>()..screenRedirect(context),
      child: const Scaffold(
        backgroundColor: AppColors.accent,
        body: SplashViewBody(),
      ),
    );
  }
}
