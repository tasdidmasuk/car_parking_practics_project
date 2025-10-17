import 'package:flutter/material.dart';
import 'package:practics_project1/pages/onbording/page2.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23335F),
        body: Container(
          padding:EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),

          child: Column(


          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("skip", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18.0
            ),)
          ],),

           Container(
             width: MediaQuery.of(context).size.width,
             height: 450.0,
             margin: EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0),
             child: Column(
               children: [
                 Image.asset("assets/images/c50c7a27e28d01d8ff207ed5fd01cf5a56137cf0.jpg",
                    height: 450,
                 width: 500,

                 )
               ],
             ),
           ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Why Choose Us", style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 15.0),
              child: Text("We make parking easy, secure, and stress-free. Whether you're driving a car or a truck, find and reserve reliable parking spots in real-time, wherever you are. With our simple booking and payment system, your parking experience is just a tap away!",
                style:TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  color: Colors.white
                ) ,),
            ),
            SizedBox(height: 40.0,),

            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Onbording2() ),);
                  },
                  child: Container(
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
                  ),
                )
              ],
            ),)

        ],),) ,
    );
  }
}
