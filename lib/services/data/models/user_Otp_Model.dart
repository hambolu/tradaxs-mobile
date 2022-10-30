import 'dart:convert';

UserOtpModel userOtpModelFromJson(String str) =>
    UserOtpModel.fromJson(json.decode(str));

String userOtpModelToJson(UserOtpModel data) => json.encode(data.toJson());

class UserOtpModel {
  UserOtpModel({
    this.status,
    this.message,
  });

  final bool? status;
  final String? message;

  factory UserOtpModel.fromJson(Map<String, dynamic> json) => UserOtpModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
