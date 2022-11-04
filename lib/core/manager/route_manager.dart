/* (c) Walt Disney. All rights reserved. */

import 'package:assignment/features/presentation/screen/update_profile.dart';
import 'package:assignment/features/presentation/screen/splash_screen.dart';
import 'package:assignment/features/presentation/screen/profile.dart';
import 'package:assignment/core/constants/app_route_constant.dart';
import 'package:velocity_x/velocity_x.dart';

class Routes {
  static VxNavigator routerDelegate = VxNavigator(routes: {
    AppRouteConstants.initialScreen: (uri, params) {
      return VxRoutePage(pageName: "/splash", child: const Splash());
    },
    AppRouteConstants.profileScreen: (uri, params) {
      return VxRoutePage(pageName: "/profile", child: const UserProfile());
    },
    AppRouteConstants.updateProfile: (uri, params) {
      return VxRoutePage(
          pageName: "/updateProfile",
          child:
              UpdateProfile(queryParameter: uri.queryParameters["userData"]));
    },
  });
}
