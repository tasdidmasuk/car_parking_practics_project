import 'package:flutter/material.dart';
import 'package:practics_project1/pages/onbording/page2.dart';

class Onbording3 extends StatefulWidget {
  const Onbording3({super.key});

  @override
  State<Onbording3> createState() => _Onbording3State();
}

class _Onbording3State extends State<Onbording3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF23335F),
      body: Container(
        padding:EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),

        child: Column(


          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Onbording2()));
                  },
                  child: Container(child: Row(
                    children: [Icon(Icons.arrow_back_ios, color: Colors.white,)],
                  ),),
                ),
                Text("skip", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0
                ),)
              ],),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 350.0,
              margin: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0),
              child: Column(
                children: [
                  Image.asset("assets/images/Screenshot 2025-10-18 004458.png",
                    height: 350,
                    width: 350,
                    fit: BoxFit.cover,

                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Real-Time Parking\n Updates", style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                 
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20.0),
              child: Text("With VIP ME, parking has never been easier. Whether you're driving a car or a truck, quickly discover secure, available parking spots nearby, reserve them in real-time, and park with peace of mind. Save time, reduce stress, and never worry about finding parking again!",
                style:TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                    color: Colors.white
                ) ,),
            ),
            SizedBox(height: 80.0,),

            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(7.0),

                  ),
                  child: Text("Next",style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                )
              ],
            ),)

          ],),) ,
    );
  }
}
