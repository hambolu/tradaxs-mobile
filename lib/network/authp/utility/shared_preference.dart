import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<bool> saveUserToken(String userToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', userToken);

    return prefs.commit();
  }

  Future<String?> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString("token");

    return token;
  }

  void removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove('token');
  }

  static Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return token;
  }
}
