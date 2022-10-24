import 'dart:convert';

UserLoginResponse userLoginResponseFromJson(String str) =>
    UserLoginResponse.fromJson(json.decode(str));

String userLoginResponseToJson(UserLoginResponse data) =>
    json.encode(data.toJson());

class UserLoginResponse {
  UserLoginResponse({this.status, this.message, this.token});

  final bool? status;
  final String? message;
  final String? token;

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) =>
      UserLoginResponse(
        status: json["status"],
        message: json["message"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
