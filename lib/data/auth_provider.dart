import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _token;
  String? _username;
  String? _email;

  String? get token => _token;
  String? get username => _username;
  String? get email => _email;

  void setAuthData(String token, String username, String email) {
    _token = token;
    _username = username;
    _email = email;
    notifyListeners();
  }

  void clearAuthData() {
    _token = null;
    _username = null;
    _email = null;
    notifyListeners();
  }
}
