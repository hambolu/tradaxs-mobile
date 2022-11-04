import 'dart:convert';

UserWalletModel userWalletModelFromJson(String str) =>
    UserWalletModel.fromJson(json.decode(str));

String userWalletModelToJson(UserWalletModel data) =>
    json.encode(data.toJson());

class UserWalletModel {
  UserWalletModel({
    this.status,
    this.message,
  });

  final bool? status;
  final String? message;

  factory UserWalletModel.fromJson(Map<String, dynamic> json) =>
      UserWalletModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
