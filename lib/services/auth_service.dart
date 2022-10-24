import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class AuthServices {
  //final UserRequestModel userRequestModel = UserRequestModel();

  static Future<dynamic?> auth(
      {required String email,
      required String password,
      required String authType}) async {
    final Map<String, dynamic> userData = {
      "email": email,
      "password": password
    };
    http.Response response = await http.post(
      Uri.parse("https://tradaxs.com/tradaxs.com/mobile/api/auth/" + authType),
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: json.encode(userData),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print("Auth successful");
      print("This is Sign up response.body ${response.body}");
      return response.body;
    }
  }
  //
  // Future<UserModel?> signIn(String phoneNumber, String password) async {
  //   final Map<String, dynamic> userData = {
  //     "phoneNumber": phoneNumber,
  //     "password": password
  //   };
  //   http.Response response = await http.post(
  //     Uri.parse('$BaseUrl/auth/login'),
  //     headers: {HttpHeaders.contentTypeHeader: "application/json"},
  //     body: json.encode(userData),
  //   );
  //   print(response.body);
  //
  //   if (response.statusCode == 200) {
  //     var res = userModelFromJson(response.body);
  //     final user = res.data;
  //     final prefs = await SharedPreferences.getInstance();
  //     prefs.setString('user', json.encode(user!.toJson()));
  //     return res;
  //   }
  //   return throw "Invalid login credentials";
  // }
  //
  // Future<dynamic> getLoggedInUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final userJson = prefs.get('user');
  //   if (userJson != null) {
  //     var jsonUser = json.decode(userJson.toString());
  //     var user = AccountAndUserAccountModel.fromJson(jsonUser);
  //     return user;
  //   } else {
  //     return "Please Sign In";
  //   }
  // }
  //
  // Future<void> signOut() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.remove('user');
  // }
}
