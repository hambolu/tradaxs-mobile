import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../data/models/userWalletModel.dart';
import '../data/models/user_get_wallet_model.dart';

enum Status { WalletNotCreated, WalletCreated, Loading, Success, Failure }

class WalletProvider extends ChangeNotifier {
  Status _walletCreatedStatus = Status.WalletNotCreated;
  bool _loading = false;
  bool _getWalletStatus = false;

  bool get loading => _loading;
  bool get getWalletStatus => _getWalletStatus;

  set loading(bool value) {
    _loading = false;
  }

  set getWalletStatus(bool value) {
    _getWalletStatus = false;
  }

  Status get walletCreatedStatus => _walletCreatedStatus;

  set walletCreatedStatus(Status value) {
    _walletCreatedStatus = value;
  }

  Future<String?> createWallet({required String token}) async {
    try {
      _loading = false;
      notifyListeners();
      http.Response response = await http.post(
        Uri.parse("https://tradaxs.com/tradaxs.com/mobile/api/createwallet"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );
      if (response.statusCode == 200) {
        print("Wallet created successful");
        print("This is Wallet created response.body ${response.body}");
        var res = userWalletModelFromJson(response.body);
        var message = userWalletModelFromJson(response.body);

        _loading = true;
        notifyListeners();

        print(
            "THIS IS Wallet created SUCCESS RETURN RESPONSE ${message.message}");
        return message.message;
      } else {
        _loading = false;
        notifyListeners();
        var res = userWalletModelFromJson(response.body);

        print("THIS IS Wallet created RETURN RESPONSE ${res.message}");
        return res.message;
      }
    } catch (e) {
      _loading = false;
      notifyListeners();
      print("THIS IS Wallet created RETURN RESPONSE $e");
      return e.toString();
    }
  }

  Future<UserGetWalletModel?> getWallet({
    required String token,
  }) async {
    try {
      _loading = true;
      notifyListeners();
      http.Response response = await http.get(
        Uri.parse("https://tradaxs.com/tradaxs.com/mobile/api/getWallet"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );
      print(response.body);

      if (response.statusCode == 200) {
        print("This is GET WALLET response.body ${response.body}");
        var res = userGetWalletModelFromJson(response.body);
        // UserPreferences().saveUserToken(res.data);
        _getWalletStatus = true;
        notifyListeners();
        return res;
      } else {
        _loading = false;
        notifyListeners();
        _getWalletStatus = false;
        notifyListeners();
        var res = jsonDecode(response.body);
        print("THIS IS GET WALLET RETURN RESPONSE ${res.message}");
        return res["message"];
      }
    } on SocketException {
      _loading = false;
      notifyListeners();
      throw "Check Internet Connection";
    } catch (e) {
      print("THIS IS GET WALLET SUCCSES RETURN RESPONSE ${e}");
    }
  }

  static onError(error) {
    print('the error is ${error.detail}');
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}
