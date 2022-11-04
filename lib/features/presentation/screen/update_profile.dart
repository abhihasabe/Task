import 'package:assignment/core/constants/app_route_constant.dart';
import 'package:assignment/core/helper/dialog.helper.dart';
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:assignment/features/presentation/widget/update_profile_widget.dart';
import 'package:assignment/features/data/model/user.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateProfile extends StatefulWidget {
  UpdateProfile({Key? key, this.queryParameter}) : super(key: key);
  String? queryParameter;

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  UserModel? userModel;

  @override
  void initState() {
    // TODO: implement initState

    userModel = UserModel.fromJson(json.decode(widget.queryParameter!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {
      if (state.status.isSubmissionFailure) {
        DialogHelper.dismissDialog(context);
      } else if (state.status.isSubmissionSuccess) {
        VxNavigator.of(context)
            .push(Uri(path: AppRouteConstants.profileScreen));
      } else if (state.status.isSubmissionInProgress) {
        DialogHelper.showLoaderDialog(context);
      }
    }, builder: (context, state) {
      return UpdateProfileWidget(userModel: userModel);
    }));
  }
}
