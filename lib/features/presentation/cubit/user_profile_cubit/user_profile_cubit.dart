import 'package:assignment/features/presentation/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:assignment/core/validations/number_validation_dart.dart';
import 'package:assignment/core/validations/email_validation.dart';
import 'package:assignment/core/validations/field_validation.dart';
import 'package:assignment/core/validations/dob_validation.dart';
import 'package:assignment/features/data/model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState());

  void userNameChanged(String value) {
    final name = Field.dirty(value);
    emit(state.copyWith(
      name: name,
      status: Formz.validate([name, state.email, state.massage]),
    ));
  }

  void genderChanged(String value) {
    final gender = Field.dirty(value);
    emit(state.copyWith(
      gender: gender,
      status: Formz.validate([gender, state.email, state.massage]),
    ));
  }

  void educationChanged(String value) {
    final education = Field.dirty(value);
    emit(state.copyWith(
      education: education,
      status: Formz.validate([education, state.email, state.massage]),
    ));
  }

  void mobileChanged(String value) {
    final phone = Number.dirty(value);
    emit(state.copyWith(
      number: phone,
      status: Formz.validate([phone, state.email, state.massage]),
    ));
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([email, state.number, state.massage]),
    ));
  }

  void dobChanged(String value) {
    final dob = DOB.dirty(value);
    emit(state.copyWith(
      dob: dob,
      status: Formz.validate([dob, state.number, state.massage]),
    ));
  }

  Future<void> addContactUs() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    UserModel userModel = UserModel(
        userName: state.name.value,
        email: state.email.value,
        dob: state.dob.value,
        education: state.education.value,
        gender: state.gender.value,
        mNumber: state.number.value);
    emit(state.copyWith(
        status: FormzStatus.submissionSuccess, outPut: userModel));
  }
}
