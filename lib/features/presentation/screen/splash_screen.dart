import 'package:assignment/core/constants/app_route_constant.dart';
import 'package:assignment/features/presentation/cubit/splash_cubit/splash_cubit.dart';
import 'package:assignment/features/presentation/cubit/splash_cubit/splash_state.dart';
import 'package:assignment/features/presentation/widget/splash_widget.dart';
import 'package:assignment/core/helper/dialog.helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<SplashCubit>().splashInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body:
            BlocConsumer<SplashCubit, SplashState>(listener: (context, state) {
      if (state is SplashLoaded) {
        VxNavigator.of(context)
            .clearAndPush(Uri.parse(AppRouteConstants.profileScreen));
      }
      if (state is SplashFailure) {
        DialogHelper.showToast(context, state.errorMessage);
      }
    }, builder: (context, state) {
      return const SplashWidget();
    }));
  }
}
