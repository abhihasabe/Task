import 'dart:convert';

import 'package:assignment/core/helper/dialog.helper.dart';
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:assignment/features/presentation/widget/profile_widget.dart';
import 'package:assignment/core/constants/app_route_constant.dart';
import 'package:assignment/features/data/model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var userName, mNumber, email, dob, education, gender;
  UserModel? userModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName = "Abhijeet Hasabe";
    mNumber = "7263942833";
    email = "abhihasabe8@gmail.com";
    dob = "24/09/1992";
    education = "BEIT";
    gender = "Male";
    userModel = UserModel(
        userName: userName,
        mNumber: mNumber,
        email: email,
        dob: dob,
        education: education,
        gender: gender);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("User Profile",
                style: Theme.of(context).appBarTheme.titleTextStyle),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  VxNavigator.of(context).push(Uri(
                      path: AppRouteConstants.updateProfile,
                      queryParameters: {"userData": jsonEncode(userModel)}));
                }),
            const SizedBox(width: 10)
          ],
        ),
        body: BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.status.isSubmissionFailure) {
                return Center(child: Text(state.exceptionError));
              } else if (state.status.isSubmissionSuccess) {
                userModel = state.outPut as UserModel;
                return ProfileWidget(userModel: userModel);
              } else if (state.status.isSubmissionInProgress) {
                DialogHelper.showLoaderDialog(context);
              }
              return ProfileWidget(userModel: userModel);
            }));
  }
}
