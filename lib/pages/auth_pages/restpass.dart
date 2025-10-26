import 'package:flutter/material.dart';
import '../validator/password_utils.dart';


class Restpass extends StatefulWidget {
  const Restpass({super.key});

  @override
  State<Restpass> createState() => _RestpassState();
}

class _RestpassState extends State<Restpass> {
  bool _isPasswordVisible1 = false; // 1st field
  bool _isPasswordVisible2 = false; // 2nd field

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();

  String passwordStrength = "";
  Color strengthColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0, bottom: 30.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [

            // Center part (image + textfields)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image
                  Image.asset(
                    "assets/images/Reset password-cuate 1.png",
                    height: 100.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),

                  SizedBox(height: 20.0),

                  // TextField 1 (New Password)
                  Container(
                    padding: EdgeInsets.all(10.0),
                    height: 100.0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        TextField(
                          controller: _passwordController,
                          obscureText: !_isPasswordVisible1,
                          onChanged: (value) {
                            // Use PasswordUtils
                            final result = PasswordUtils.checkPassword(value);
                            setState(() {
                              passwordStrength = result['message'];
                              strengthColor = result['color'];
                            });
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Enter your new password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible1 = !_isPasswordVisible1;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            passwordStrength,
                            style: TextStyle(
                              color: strengthColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // TextField 2 (Confirm Password)
                  Container(
                    padding: EdgeInsets.all(10.0),
                    height: 80.0,
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      controller: _confirmController,
                      obscureText: !_isPasswordVisible2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Confirm your new password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible2
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible2 = !_isPasswordVisible2;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Login Button
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(8.0),
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
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
          ],
        ),
      ),
    );
  }
}
