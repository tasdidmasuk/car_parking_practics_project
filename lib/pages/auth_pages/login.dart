import 'package:flutter/material.dart';
import '../validator/validator.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  String? emailError;
  String? passError;

  void validateFields() {
    setState(() {
      // ✅ Calling validator methods from validator.dart
      emailError = Validator.validateEmail(_emailController.text.trim());
      passError = Validator.validatePassword(_passController.text.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(
          right: 20.0,
          left: 20.0,
          top: 200.0,
          bottom: 30.0,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/e5517357e0a3b2bca1823127ac4c47c949d93606.png",
              height: 100.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),

            // Email field
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 90.0,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.email_outlined),
                  suffixIcon: const Icon(Icons.cloud_done),
                  hintText: "Enter your email",
                  errorText: emailError, // ✅ Show email error
                ),
              ),
            ),

            // Password field
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 90.0,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                controller: _passController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.password_outlined),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  hintText: "Enter your password",
                  errorText: passError, // ✅ Show password error
                ),
              ),
            ),

            // Login button
            GestureDetector(
              onTap: validateFields, // ✅ Validate when button pressed
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(8.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10.0),

            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget password?",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 200.0),

            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t Have An Account?",
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
