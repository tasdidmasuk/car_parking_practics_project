import 'package:flutter/material.dart';

class PasswordUtils {
  // Password strength checker
  static Map<String, dynamic> checkPassword(String password) {
    int strength = 0;

    if (password.length >= 6) strength += 1; // min length
    if (RegExp(r'[A-Z]').hasMatch(password)) strength += 1; // uppercase
    if (RegExp(r'[0-9]').hasMatch(password)) strength += 1; // number
    if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) strength += 1; // special char

    String message = "";
    Color color = Colors.grey;

    if (strength <= 1) {
      message = "Weak (50%) - Use uppercase, number, special char";
      color = Colors.red;
    } else if (strength == 2 || strength == 3) {
      message = "Medium (80%) - Almost strong";
      color = Colors.orange;
    } else if (strength == 4) {
      message = "Strong (100%) - Good!";
      color = Colors.green;
    }

    return {
      'message': message,
      'color': color,
    };
  }
}
