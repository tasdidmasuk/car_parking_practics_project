import 'package:flutter/material.dart';

class Numbervari2 extends StatefulWidget {
  const Numbervari2({super.key});

  @override
  State<Numbervari2> createState() => _Numbervari2State();
}

class _Numbervari2State extends State<Numbervari2> {
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
                mainAxisAlignment: MainAxisAlignment.center, // 👈 center vertically
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Wavy_Bus-36_Single-04-[Converted] 1.png",
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    "Find Nearby Parking Spots",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text("Enter your location or allow access to find available parking spots near you."
                      " n\ Get real-time updates on secure, nearby spaces to park your car or truck "
                      "with ease.",textAlign: TextAlign.center,),
                  SizedBox(height: 15.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      suffixIcon: Icon(
                        Icons.done_outline_sharp,
                        color: Colors.black,
                      ),
                      hintText: "example@gmail.com",
                    ),
                  ),

                  SizedBox(height: 10.0,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.email_outlined),
                      suffixIcon: Icon(
                        Icons.done_outline_sharp,
                        color: Colors.black,
                      ),
                      hintText: "example@gmail.com",
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
