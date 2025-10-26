import 'package:flutter/material.dart';

class Numbervari3 extends StatefulWidget {
  const Numbervari3({super.key});

  @override
  State<Numbervari3> createState() => _Numbervari3State();
}

class _Numbervari3State extends State<Numbervari3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Frame.png",
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    "Thank You for Signing Up!\nWelcome to our VIP ME application. Get ready for exclusive access to hassle-free car and truck parking!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),


                ],
              ),
            ),

            // --- Bottom Button ---
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
