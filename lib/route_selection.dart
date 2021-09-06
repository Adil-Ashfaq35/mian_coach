
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:date_time_picker/date_time_picker.dart';



class route_selection extends StatefulWidget {
  const route_selection({Key? key}) : super(key: key);

  @override
  _route_selectionState createState() => _route_selectionState();
}

class _route_selectionState extends State<route_selection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
            SizedBox(
              height: 180,
            ),
            Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: 230,
                    color: Color(0xff707070),
                    child: Row(
                      children: [
                        Center(child: Text("-- Select Departure --",style: TextStyle(fontSize: 16),),
                    ),
                        SizedBox(width: 35,),
                        Icon(Icons.check_box_outline_blank_sharp,size: 30,)
                      ],

                    )
                    ),





                    ]
                ),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: 230,
                    color: Color(0xff707070),
                    child: Row(
                      children: [
                        Center(child: Text("-- Select Departure --",style: TextStyle(fontSize: 16),),
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.check_box_outline_blank_sharp,size: 30,)
                      ],

                    )
                ),
                SizedBox(height: 10,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,),
                    height: 40,
                    width: 230,
                    color: Color(0xff707070),
                    child: Row(
                      children: [
                        Center(child: Text("-- Select Departure --",style: TextStyle(fontSize: 16),),
                        ),
                        SizedBox(width: 35,),
                        Icon(Icons.check_box_outline_blank_sharp,size: 30,)
                      ],

                    )
                ),
                SizedBox(height: 10,),





                Container(
                    height: 36,
                    width: 202,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xffF2F2F2),
                      child: Text(
                        'Get Schedule',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'process');
                      },
                    )),
              ],
            )
        ]
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





