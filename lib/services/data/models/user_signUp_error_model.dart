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
    this.errors,
  });

  final bool? status;
  final String? message;
  final Errors? errors;

  factory UserSignUpErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      UserSignUpErrorResponseModel(
        status: json["status"],
        message: json["message"],
        errors: Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "errors": errors!.toJson(),
      };
}

class Errors {
  Errors({
    this.email,
  });

  final List<String>? email;

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
        email: List<String>.from(json["email"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "email": List<dynamic>.from(email!.map((x) => x)),
      };
}
