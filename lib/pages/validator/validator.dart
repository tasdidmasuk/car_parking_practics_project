
// validator.dart

class Validator {
  // ✅ Email validation
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Email cannot be empty";
    } else if (!email.contains("@")) {
      return "Invalid email format";
    }
    return null; // No error
  }

  // ✅ Password validation
  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Password cannot be empty";
    } else if (password.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null; // No error
  }
}





