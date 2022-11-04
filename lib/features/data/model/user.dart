class UserModel {
  String? userName;
  String? mNumber;
  String? email;
  String? dob;
  String? education;
  String? gender;

  UserModel(
      {this.userName,
        this.mNumber,
        this.email,
        this.dob,
        this.education,
        this.gender});

  UserModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    mNumber = json['mNumber'];
    email = json['email'];
    dob = json['dob'];
    education = json['education'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['mNumber'] = this.mNumber;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['education'] = this.education;
    data['gender'] = this.gender;
    return data;
  }
}