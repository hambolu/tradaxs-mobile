import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../network/authp/utility/shared_preference.dart';
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

  Future<dynamic?> register({
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
        _authenticated = true;
        notifyListeners();
        return message.message;
      } else {
        _registeredInStatus = Status.NotRegistered;
        _authenticated = false;
        notifyListeners();
        var res = userSignUpErrorResponseModelFromJson(response.body);
        return res.message;
      }
    } on SocketException {
      _registeredInStatus = Status.NotRegistered;
      _authenticated = false;
      notifyListeners();
      throw "Check Internet Connection";
    } catch (e) {
      return e.toString();
    }
  }

  notify() {
    notifyListeners();
  }

  Future<dynamic?> login({
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
        _authenticated = true;
        notifyListeners();
        return message.message;
      } else {
        _loggedInStatus = Status.NotLoggedIn;
        _authenticated = false;
        notifyListeners();
        var res = userLoginResponseFromJson(response.body);
        return res.message;
      }
    } on SocketException {
      _loggedInStatus = Status.NotLoggedIn;
      _authenticated = false;
      notifyListeners();

      throw "Check Internet Connection";
    } catch (e) {
      _loggedInStatus = Status.NotLoggedIn;
      _authenticated = false;
      notifyListeners();
      return e.toString();
    }
  }

  static onError(error) {
    print('the error is ${error.detail}');
    return {'status': false, 'message': 'Unsuccessful Request', 'data': error};
  }
}
