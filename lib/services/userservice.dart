import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserServices {
  static Future<void> storeUserDetails(
      {required String username,
      required String email,
      required password,
      required String confirmPassword,
      required BuildContext context}) async {
    try {
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("password and confirm password do not match"),
          ),
        );
        return;
      }
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("username", username);
      await prefs.setString("email", email);

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Your username and password saved"),
        ),
      );
    } catch (err) {
      err.toString();
    }
  }
}
