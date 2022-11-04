import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tradaxs/services/providers/wallet_provider.dart';

import '../../network/authp/utility/shared_preference.dart';
import '../data/models/user_Otp_Model.dart';
import '../data/models/user_login_model.dart';
import '../data/models/user_signUp_error_model.dart';
import '../data/models/user_signUp_success_model.dart';

enum Status {
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut
}

class AuthProvider extends ChangeNotifier {
  WalletProvider walletProvider = WalletProvider();
  Status _loggedInStatus = Status.NotLoggedIn;
  Status _registeredInStatus = Status.NotRegistered;
  bool _authenticated = false;

  bool get authenticated => _authenticated;

  set authenticated(bool value) {
    _authenticated = false;
  }

  Status get loggedInStatus => _loggedInStatus;

  set loggedInStatus(Status value) {
    _loggedInStatus = value;
  }

  Status get registeredInStatus => _registeredInStatus;

  set registeredInStatus(Status value) {
    _registeredInStatus = value;
  }

  Future<String?> register({
    required String email,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> userData = {
        "email": email,
        "password": password
      };
      _registeredInStatus = Status.Authenticating;
      notifyListeners();
      http.Response response = await http.post(
        Uri.parse("https://tradaxs.com/tradaxs.com/mobile/api/auth/register"),
        headers: {HttpHeaders.contentTypeHeader: "application/json"},
        body: json.encode(userData),
      );
      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        print("Auth successful");
        print("This is Sign up response.body ${response.body}");
        var res = userSignUpSuccessResponseModelFromJson(response.body);
        var message = userSignUpSuccessResponseModelFromJson(response.body);
        UserPreferences().saveUserToken(res.token!);
        _registeredInStatus = Status.Registered;
        String? createWallet =
            await walletProvider.createWallet(token: res.token!);
        await walletProvider.getWallet(token: res.token!);
        _authenticated = true;
        notifyListeners();
        print(
            "THIS IS Register SUCCSES RETURN RESPONSE ${message.message! + createWallet!}");
        return message.message! + createWallet!;
      } else {
        _registeredInStatus = Status.NotRegistered;
        _authenticated = false;
        notifyListeners();
        var res = userSignUpErrorResponseModelFromJson(response.body);
        print("THIS IS REGISTER FAILURE RETURN RESPONSE ${res.message}");
        return res.message;
      }
    } on SocketException {
      _registeredInStatus = Status.NotRegistered;
      _authenticated = false;
      notifyListeners();
      throw "Check Internet Connection";
    } catch (e) {
      print("THIS IS LOGIN SUCCSES RETURN RESPONSE ${e}");
      return e.toString();
    }
  }

  notify() {
    notifyListeners();
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      final Map<String, dynamic> userData = {
        "email": email,
        "password": password
      };

      _loggedInStatus = Status.Authenticating;
      notifyListeners();

      http.Response response = await http.post(
        Uri.parse("https://tradaxs.com/tradaxs.com/mobile/api/auth/login"),
        headers: {HttpHeaders.contentTypeHeader: "application/json"},
        body: json.encode(userData),
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        print("Auth successful");
        print("This is Sign up response.body ${response.body}");
        var res = userLoginResponseFromJson(response.body);
        var message = userLoginResponseFromJson(response.body);
        UserPreferences().saveUserToken(res.token!);
        _loggedInStatus = Status.LoggedIn;
        notifyListeners();
        _authenticated = true;
        notifyListeners();

        print("THIS IS LOGIN SUCCSES RETURN RESPONSE ${message.message}");
        return message.message;
      } else {
        _loggedInStatus = Status.NotLoggedIn;
        notifyListeners();
        _authenticated = false;
        notifyListeners();
        var res = userLoginResponseFromJson(response.body);

        print("THIS IS LOGIN FAILURE RETURN RESPONSE ${res.message}");
        return res.message;
      }
    } on SocketException {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      _authenticated = false;
      notifyListeners();

      throw "Check Internet Connection";
    } catch (e) {
      _loggedInStatus = Status.NotLoggedIn;
      notifyListeners();
      _authenticated = false;
      notifyListeners();

      print("THIS IS LOGIN SUCCSES RETURN RESPONSE ${e}");
      return e.toString();
    }
  }

  Future<String?> validateOtp(String otp) async {
    String? userToken = await UserPreferences.getToken();
    try {
      final Map<String, dynamic> userOtp = {
        "otp": otp,
      };
      _authenticated = false;
      notifyListeners();
      http.Response response = await http.post(
        Uri.parse(
            "https://tradaxs.com/tradaxs.com/mobile/api/otp/verification"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
          HttpHeaders.authorizationHeader: "Bearer $userToken",
        },
        body: json.encode(userOtp),
      );
      if (response.statusCode == 200) {
        print("OTP Validation successful");
        print("This is OTP Validation response.body ${response.body}");
        var res = userOtpModelFromJson(response.body);
        var message = userOtpModelFromJson(response.body);

        _authenticated = true;
        notifyListeners();

        print(
            "THIS IS OTP Validation SUCCESS RETURN RESPONSE ${message.message}");
        return message.message;
      } else {
        _authenticated = false;
        notifyListeners();
        var res = userOtpModelFromJson(response.body);

        print("THIS IS LOGIN FAILURE RETURN RESPONSE ${res.message}");
        return res.message;
      }
    } catch (e) {
      _authenticated = false;
      notifyListeners();
      print("THIS IS LOGIN SUCCSES RETURN RESPONSE $e");
      return e.toString();
    }
  }

  static onError(error) {
    print('the error is ${error.detail}');
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}
