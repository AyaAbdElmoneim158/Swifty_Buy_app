import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/splash_repo/splash_repo.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this.splashRepo) : super(SplashInitial());
  static SplashCubit get(context) => BlocProvider.of(context);
  SplashRepo splashRepo;

  void screenRedirect(context) {
    Timer(const Duration(seconds: 3), () {
      splashRepo.screenRedirect(context);
    });
    emit(SplashRedirect());
  }
}
