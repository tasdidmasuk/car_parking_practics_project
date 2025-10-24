import 'package:flutter/material.dart';

class Forgetotp extends StatefulWidget {
  const Forgetotp({super.key});

  @override
  State<Forgetotp> createState() => _ForgetotpState();
}

class _ForgetotpState extends State<Forgetotp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/13246824_5191077 1.png",
                  height: 150,
                  width: 200,
                  fit: BoxFit.cover,),

                Text("We've Sent a Code to exa...@email.com", style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black
                ),),
                SizedBox(height: 10.0,),

                Container(
                  child:
                  Row( crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      color: Colors.black,
                    ),

                  ],),
                ),
                SizedBox(height: 20.0,),

                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you didn’t receive a code.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,

                    ),),
                    Text("Resend", style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),),


              ],

            )
            ),
            //btn
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  "Get OTP",
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
    );
  }
}
