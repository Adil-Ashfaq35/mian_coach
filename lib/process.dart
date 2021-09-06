import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mian_coach/bus.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:async/async.dart';
import 'package:mian_coach/bus.dart';


class process extends StatefulWidget {

  const process({Key? key}) : super(key: key);

  @override
  _processState createState() => _processState();
}

class _processState extends State<process> {
  @override
  Widget build(BuildContext context) {
    setState(()async{
      Timer(Duration(seconds: 2), (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
            bus()));
    });

       return  Scaffold(


      body: Column(


          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                        )
                    )
                ),
                SizedBox(
                  width: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Color(0xff6C63FF),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.cancel,
                      size: 30,

                    )
                  ],
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 180),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                CircularPercentIndicator(
                radius: 150.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                progressColor: Colors.green,
                center: new Text(
                  "Please Wait",
                  style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),

              ),



              ]
              ),
            ),












              ],
            ),



      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 0.0,
        onPressed: () {},
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/phone.png'),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );

  }
}
