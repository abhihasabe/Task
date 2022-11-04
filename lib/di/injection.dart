import 'package:assignment/features/presentation/cubit/splash_cubit/splash_cubit.dart';
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:assignment/core/manager/network_info_manager.dart';
import 'package:assignment/core/manager/http_client_manager.dart';
import 'package:assignment/core/manager/cache_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> init() async {
  await initGlobals();
  await initManagers();
  await initCubits();
  await initUseCases();
  await initRepositories();
  await initDataSources();
}

Future<void> initGlobals() async {
  locator.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
  locator.registerLazySingleton<Future<SharedPreferences>>(
      () => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => http.Client());
}

Future<void> initCubits() async {
  locator.registerFactory(() => SplashCubit());
  locator.registerFactory(() => ProfileCubit());
}

Future<void> initUseCases() async {}

Future<void> initRepositories() async {}

Future<void> initDataSources() async {}

Future<void> initManagers() async {
  var sharedPrefs = await locator.get<Future<SharedPreferences>>();

  locator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoManager(connectionChecker: locator()));

  locator.registerLazySingleton<HttpClientManager>(
      () => HttpClientManagerImpl(initClient: locator()));

  locator.registerLazySingleton<CacheManager>(
      () => CacheManagerImpl(initSharedPref: sharedPrefs));
}
