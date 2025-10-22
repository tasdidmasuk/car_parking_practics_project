import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20.0),
        height: 800.0,
        width: MediaQuery.of(context).size.width,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
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
                prefixIcon: Icon(Icons.email_outlined),
                suffixIcon: Icon(Icons.cloud_done),
            
                hintText: "Enter your email",
            
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
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
            
                hintText: "Enter your password",
            
              ),
            ),
          ),

          //login button
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
          child: Center(child: Text("Login",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0
          ),)),
          ),
          SizedBox(height: 10.0,),
          
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forget password?",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
          
          SizedBox(height: 150.0,),
          Container(
            child: 
            Row(
              children: [
                Text("Don’t Have An Account?",style:
                TextStyle(color: Colors.black,
                fontSize: 14.0),),
                SizedBox(width: 5.0,),
                Text("Signup", style:
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
