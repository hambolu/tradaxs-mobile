import 'dart:convert';

UserSignUpSuccessResponseModel userSignUpSuccessResponseModelFromJson(
        String str) =>
    UserSignUpSuccessResponseModel.fromJson(json.decode(str));

String userSignUpSuccessResponseModelToJson(
        UserSignUpSuccessResponseModel data) =>
    json.encode(data.toJson());

class UserSignUpSuccessResponseModel {
  UserSignUpSuccessResponseModel({
    this.status,
    this.message,
    this.data,
    this.token,
  });

  final bool? status;
  final String? message;
  final String? data;
  final String? token;

  factory UserSignUpSuccessResponseModel.fromJson(Map<String, dynamic> json) =>
      UserSignUpSuccessResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data,
        "token": token,
      };
}
