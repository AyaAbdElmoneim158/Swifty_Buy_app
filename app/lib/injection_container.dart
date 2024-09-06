import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/features/splash/data/repos/splash_repo/splash_repo_impl.dart';
import 'src/features/splash/presentation/view_model/splash_cubit/splash_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///* Cubit ----------------------------------------------------------------
  sl.registerFactory<SplashCubit>(() => SplashCubit(sl<SplashRepoImpl>()));
  sl.registerLazySingleton<SplashRepoImpl>(() => SplashRepoImpl());

  ///* External --------------------------------------------------------------------
  sl.registerLazySingleton(() => Dio());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
