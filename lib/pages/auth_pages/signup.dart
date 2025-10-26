import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0,
            bottom: 30.0),

        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            Image.asset("assets/images/e5517357e0a3b2bca1823127ac4c47c949d93606.png",
              height: 100.0,
              width: 200.0,
              fit: BoxFit.cover,),

            //Textfeild 1

            Container(
              padding: EdgeInsets.all(10.0),
              height: 80.0,
              width: MediaQuery.of(context).size.width,

              child: TextField(
                decoration:

                InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                  suffixIcon: Icon(Icons.person),
                  hintText: "Username",

                ),
              ),
            ),

            //text feild 2



            Container(

              padding: EdgeInsets.all(10.0),
              height: 80.0,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration:
                InputDecoration(

                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  suffixIcon: Icon(Icons.email_outlined),
                  hintText: "Enter your Email",

                ),
              ),
            ),

            //Textfeild 3

            Container(
              padding: EdgeInsets.all(10.0),
              height: 80.0,
              width: MediaQuery.of(context).size.width,

              child: TextField(
                decoration:

                InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                  suffixIcon: Icon(Icons.remove_red_eye),

                  hintText: "Enter your password",

                ),
              ),
            ),

            //text feild 4



            Container(

              padding: EdgeInsets.all(10.0),
              height: 80.0,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration:
                InputDecoration(

                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),

                  hintText: "Confirmed your password",

                ),
              ),
            ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(8.0),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    decoration:
                    BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),


                    ),
                    child: Center(child: Text("signup",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),)),
                  ),
                  SizedBox(height: 10.0,),

                ])),


            //login button



            //dont have account


            Container(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already account exxisting?",style:
                  TextStyle(color: Colors.black,
                      fontSize: 14.0),),
                  SizedBox(width: 5.0,),
                  Text("login", style:
                  TextStyle(color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),)
                ],
              ),
            )








            //sesh bracket
          ],),) ,
    );
  }
}
