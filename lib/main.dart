import 'package:assignment/features/presentation/cubit/splash_cubit/splash_cubit.dart';
import 'package:assignment/core/manager/route_manager.dart';
import 'package:assignment/core/style/app_theme.dart';
import 'package:assignment/di/injection.dart' as di;
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init().whenComplete(() {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.locator<SplashCubit>()),
        BlocProvider(create: (context) => di.locator<ProfileCubit>())
      ],
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        title: 'Assignment',
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        routeInformationParser: VxInformationParser(),
        routerDelegate: Routes.routerDelegate,
      ),
    );
  }
}
