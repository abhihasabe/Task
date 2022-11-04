import 'package:assignment/core/validations/number_validation_dart.dart';
import 'package:assignment/core/validations/email_validation.dart';
import 'package:assignment/core/validations/field_validation.dart';
import 'package:assignment/core/validations/dob_validation.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

class ProfileState extends Equatable {
  const ProfileState(
      {this.name = const Field.pure(),
      this.gender = const Field.pure(),
      this.education = const Field.pure(),
      this.dob = const DOB.pure(),
      this.number = const Number.pure(),
      this.email = const Email.pure(),
      this.massage = const Field.pure(),
      this.status = FormzStatus.pure,
      this.exceptionError = "",
      this.outPut = ""});

  final Field name;
  final Field gender;
  final Field education;
  final DOB dob;
  final Number number;
  final Email email;
  final Field massage;
  final FormzStatus status;
  final String exceptionError;
  final Object outPut;

  @override
  List<Object> get props => [
        name,
        gender,
        education,
        dob,
        number,
        email,
        massage,
        status,
        exceptionError,
        outPut
      ];

  ProfileState copyWith({
    Field? name,
    Field? gender,
    Field? education,
    DOB? dob,
    Number? number,
    Email? email,
    Field? massage,
    FormzStatus? status,
    String? exceptionError,
    Object? outPut,
  }) {
    return ProfileState(
        name: name ?? this.name,
        gender: gender ?? this.gender,
        education: education ?? this.education,
        dob: dob ?? this.dob,
        number: number ?? this.number,
        email: email ?? this.email,
        massage: massage ?? this.massage,
        status: status ?? this.status,
        exceptionError: exceptionError ?? this.exceptionError,
        outPut: outPut ?? this.outPut);
  }
}
