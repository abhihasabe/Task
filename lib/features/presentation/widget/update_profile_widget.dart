import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:assignment/features/data/model/user.dart';
import 'package:assignment/core/style/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class UpdateProfileWidget extends StatefulWidget {
  UpdateProfileWidget({Key? key, this.userModel}) : super(key: key);
  UserModel? userModel;

  @override
  State<UpdateProfileWidget> createState() => _UpdateProfileWidgetState();
}

class _UpdateProfileWidgetState extends State<UpdateProfileWidget> {
  final userNameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();
  final educationController = TextEditingController();
  final genderController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  setData() {
    if (widget.userModel!.userName!.isNotEmpty) {
      userNameController.text = widget.userModel!.userName!;
      context.read<ProfileCubit>().userNameChanged(userNameController.text);
    }
    if (widget.userModel!.mNumber!.isNotEmpty) {
      mobileController.text = widget.userModel!.mNumber!;
      context.read<ProfileCubit>().mobileChanged(mobileController.text);
    }
    if (widget.userModel!.email!.isNotEmpty) {
      emailController.text = widget.userModel!.email!;
      context.read<ProfileCubit>().emailChanged(emailController.text);
    }
    if (widget.userModel!.dob!.isNotEmpty) {
      dobController.text = widget.userModel!.dob!;
      context.read<ProfileCubit>().dobChanged(dobController.text);
    }
    if (widget.userModel!.education!.isNotEmpty) {
      educationController.text = widget.userModel!.education!;
      context.read<ProfileCubit>().educationChanged(educationController.text);
    }
    if (widget.userModel!.gender!.isNotEmpty) {
      genderController.text = widget.userModel!.gender!;
      context.read<ProfileCubit>().genderChanged(genderController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                shape: BoxShape.circle,
                color: Colors.white,
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            textfield(
                hintText: 'Username',
                controller: userNameController,
                onChanged: (userName) =>
                    context.read<ProfileCubit>().userNameChanged(userName)),
            const SizedBox(height: 14),
            textfield(
                hintText: 'Email',
                controller: emailController,
                onChanged: (email) =>
                    context.read<ProfileCubit>().emailChanged(email)),
            const SizedBox(height: 14),
            textfield(
                hintText: 'Mobile Number',
                controller: mobileController,
                onChanged: (mNumber) =>
                    context.read<ProfileCubit>().mobileChanged(mNumber)),
            const SizedBox(height: 14),
            textfield(
                hintText: 'Gender',
                controller: genderController,
                onChanged: (gender) =>
                    context.read<ProfileCubit>().genderChanged(gender)),
            const SizedBox(height: 14),
            textfield(
                hintText: 'Date Of Birth',
                controller: dobController,
                onChanged: (dob) =>
                    context.read<ProfileCubit>().dobChanged(dob)),
            const SizedBox(height: 14),
            textfield(
                hintText: 'Education',
                controller: educationController,
                onChanged: (education) =>
                    context.read<ProfileCubit>().educationChanged(education)),
            const SizedBox(height: 28),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
                  context.read<ProfileCubit>().addContactUs();
                },
                child:
                    Text('UPDATE', style: Theme.of(context).textTheme.button),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textfield({
    hintText,
    required TextEditingController controller,
    required void Function(dynamic password) onChanged,
  }) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal)),
          prefixIcon: const Icon(
            Icons.person,
            color: primaryColor,
          ),
          hintText: hintText,
          label: Text(hintText),
          suffixStyle: const TextStyle(color: primaryColor)),
    );
  }
}