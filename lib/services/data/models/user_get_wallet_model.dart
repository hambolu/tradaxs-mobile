import 'dart:convert';

UserGetWalletModel userGetWalletModelFromJson(String str) =>
    UserGetWalletModel.fromJson(json.decode(str));

String userGetWalletModelToJson(UserGetWalletModel data) =>
    json.encode(data.toJson());

class UserGetWalletModel {
  UserGetWalletModel({
    this.status,
    this.data,
  });

  final bool? status;
  final Data? data;

  factory UserGetWalletModel.fromJson(Map<String, dynamic> json) =>
      UserGetWalletModel(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : data?.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.address,
    this.pkey,
    this.balance,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;
  final dynamic? name;
  final String? address;
  final String? pkey;
  final String? balance;
  final String? userId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        name: json["name"],
        address: json["address"] == null ? null : json["address"],
        pkey: json["pkey"] == null ? null : json["pkey"],
        balance: json["balance"] == null ? null : json["balance"],
        userId: json["user_id"] == null ? null : json["user_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name,
        "address": address == null ? null : address,
        "pkey": pkey == null ? null : pkey,
        "balance": balance == null ? null : balance,
        "user_id": userId == null ? null : userId,
        "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
      };
}
