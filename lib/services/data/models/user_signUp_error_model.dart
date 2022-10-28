// To parse this JSON data, do
//
//     final userSignUpErrorResponseModel = userSignUpErrorResponseModelFromJson(jsonString);

import 'dart:convert';

UserSignUpErrorResponseModel userSignUpErrorResponseModelFromJson(String str) =>
    UserSignUpErrorResponseModel.fromJson(json.decode(str));

String userSignUpErrorResponseModelToJson(UserSignUpErrorResponseModel data) =>
    json.encode(data.toJson());

class UserSignUpErrorResponseModel {
  UserSignUpErrorResponseModel({
    this.status,
    this.message,
  });

  final bool? status;
  final String? message;

  factory UserSignUpErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      UserSignUpErrorResponseModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
